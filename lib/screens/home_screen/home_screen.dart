import 'package:flutter/material.dart';

import 'package:my_own_soundboard/screens/home_screen/sound_page.dart';
import 'package:my_own_soundboard/screens/widgets/menu.dart';
import 'package:my_own_soundboard/models/model.dart';

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
    final Model _model = Model.getExampleInstance();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Menu(),
        ],
      ),
      //TODO: wrap in PageView(index) and add pages automatically
      body: SoundPage(_model.pages[0]),
    );
  }
}
