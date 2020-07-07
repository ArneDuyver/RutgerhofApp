import 'package:flutter/material.dart';

import 'package:my_own_soundboard/models/model.dart';
import 'package:my_own_soundboard/screens/add_soundfile_screen/add_soundfile_screen.dart';
import 'package:my_own_soundboard/screens/home_screen/home_screen.dart';
import 'package:my_own_soundboard/screens/widgets/media_button_appbar.dart';
import 'package:my_own_soundboard/screens/widgets/menu.dart';

class LibraryScreen extends StatefulWidget {
  static const String routeName = "/LibraryScreen";

  final String title;

  LibraryScreen({Key key, this.title}) : super(key: key);

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  //TODO: pop up a dialog asking if ure sure first
  void removeSound(index) {
    setState(() {
      Model.getExampleInstance().removeSoundFromLibrary(index);
    });
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
          MediaButtonAppBar(Icons.add, () {
            Navigator.pushReplacementNamed(
                context, AddSoundfileScreen.routeName);
          }),
          Menu(),
        ],
      ),
      //TODO: make it pretty
      body: ListView.builder(
        itemCount: Model.getExampleInstance().library.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(Model.getExampleInstance().library[index].soundName),
            onLongPress: () {
              return removeSound(index);
            },
          );
        },
      ),
    );
  }
}
