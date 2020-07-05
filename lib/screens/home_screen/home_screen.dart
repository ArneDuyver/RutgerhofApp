import 'package:flutter/material.dart';
import 'package:my_own_soundboard/screens/info_screen/info_screen.dart';
import 'package:my_own_soundboard/screens/widgets/menu.dart';

class MyHomePage extends StatefulWidget {
  static const String routeName = "/MyHomePage";

  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pushReplacementNamed(context, InfoScreen.routeName);
            },
          ),
          Menu(),
        ],
      ),
      //TODO: make it pretty
      body: Column(
        children: <Widget>[
          Center(
            child: Text("This is the home screen"),
          ),
        ],
      ),
    );
  }
}
