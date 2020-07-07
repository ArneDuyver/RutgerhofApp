import 'package:flutter/material.dart';
import 'package:my_own_soundboard/screens/add_soundfile_screen/add_soundfile_screen.dart';
import 'package:my_own_soundboard/screens/library_screen/library_screen.dart';

import './screens/home_screen/home_screen.dart';
import './screens/info_screen/info_screen.dart';
import './strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final Strings strings = Strings.getInstance(
    lang: Strings.nederlands,
  );

  final routes = <String, WidgetBuilder>{
    InfoScreen.routeName: (BuildContext context) =>
        new InfoScreen(title: strings.infoScreenTitle),
    MyHomePage.routeName: (BuildContext context) =>
        new MyHomePage(title: strings.homeScreenTitle),
    LibraryScreen.routeName: (BuildContext context) =>
        new LibraryScreen(title: strings.libraryScreenTitle),
    AddSoundfileScreen.routeName: (BuildContext context) =>
        new AddSoundfileScreen(title: strings.addSoundfileScreenTitle),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        title: strings.homeScreenTitle,
      ),
      routes: routes,
    );
  }
}
