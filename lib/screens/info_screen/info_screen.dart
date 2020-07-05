import 'package:flutter/material.dart';
import 'package:my_own_soundboard/screens/home_screen/home_screen.dart';

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
      //TODO: add menu
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacementNamed(context, MyHomePage.routeName);
            },
          ),
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
