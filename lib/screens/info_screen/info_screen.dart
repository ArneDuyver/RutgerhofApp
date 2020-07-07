import 'package:flutter/material.dart';
import 'package:my_own_soundboard/screens/home_screen/home_screen.dart';
import 'package:my_own_soundboard/screens/widgets/media_button_appbar.dart';
import 'package:my_own_soundboard/screens/widgets/menu.dart';

class InfoScreen extends StatefulWidget {
  static const String routeName = "/InfoScreen";

  final String title;

  InfoScreen({Key key, this.title}) : super(key: key);

  @override
  InfoScreenState createState() => new InfoScreenState();
}

class InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          MediaButtonAppBar(Icons.home, () {
            Navigator.pushReplacementNamed(context, MyHomePage.routeName);
          }),
          Menu(),
        ],
      ),
      body: new Container(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        tooltip: 'Add',
        child: new Icon(Icons.add),
      ),
    );
  }

  //TODO: adjust
  void _onFloatingActionButtonPressed() {}
}
