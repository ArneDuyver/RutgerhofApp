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
        //TODO: make it pretty
        body: Text("Hellow"));
  }
}
