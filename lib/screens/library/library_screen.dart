import 'package:flutter/material.dart';

import 'package:my_own_soundboard/screens/home_screen/home_screen.dart';
import 'package:my_own_soundboard/screens/widgets/menu.dart';

class LibraryScreen extends StatefulWidget {
  static const String routeName = "/LibraryScreen";

  final String title;

  LibraryScreen({Key key, this.title}) : super(key: key);

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacementNamed(context, MyHomePage.routeName);
            },
          ),
          Menu(),
        ],
      ),
      //TODO: make it pretty
      body: Column(
        children: <Widget>[
          Center(
            child: Text("This is the LibraryScreen"),
          ),
        ],
      ),
    );
  }
}
