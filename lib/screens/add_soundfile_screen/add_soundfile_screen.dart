import 'dart:io';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:my_own_soundboard/screens/home_screen/home_screen.dart';
import 'package:my_own_soundboard/screens/widgets/media_button_appbar.dart';
import 'package:my_own_soundboard/screens/widgets/menu.dart';

class AddSoundfileScreen extends StatefulWidget {
  static const String routeName = "/AddSoundfileScreen";
  final String title;
  AddSoundfileScreen({Key key, this.title}) : super(key: key);

  @override
  _AddSoundfileScreenState createState() => _AddSoundfileScreenState();
}

class _AddSoundfileScreenState extends State<AddSoundfileScreen> {
  final myController = TextEditingController();

  String filepath;

  void addFilepath() async {
    String path;
    File file = await FilePicker.getFile();
    path = file.path;
    setState(() {
      filepath = path;
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  static AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  void playAudio(String path) async {
    print(path);
    int status = await _audioPlayer.play(path, isLocal: true);

    if (status == 1) {
      setState(() {
        isPlaying = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            MediaButtonAppBar(Icons.home, () {
              Navigator.pushReplacementNamed(context, MyHomePage.routeName);
            }),
            Menu(),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //TODO: make it pretty
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Fill in a title below",
                  style: TextStyle(fontSize: 26.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  controller: myController,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Click the music note and find your soundfile",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  addFilepath();
                },
                child: Icon(Icons.music_note),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "filepath: $filepath",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Click 'Add sound' to add your sound to your library",
                  style: TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  // #region Dialog popUp TODO
                  //TODO if title or filepath are null enter a help dialog
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(
                          "Add ${myController.text} with filepath $filepath to library?",
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Yes"),
                            onPressed: () {
                              return playAudio(filepath);
                            },
                          ),
                          FlatButton(
                            child: Text("No"),
                            onPressed: () {
                              _audioPlayer.stop();
                              setState(() {
                                isPlaying = false;
                              });
                            },
                          ),
                        ],
                      );
                    },
                  );
                  // #endregion
                },
                child: Text("Add sound"),
              ),
            ],
          ),
        ));
  }
}
