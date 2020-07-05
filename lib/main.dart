import 'package:flutter/material.dart';

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

  var routes = <String, WidgetBuilder>{
    InfoScreen.routeName: (BuildContext context) =>
        new InfoScreen(title: strings.infoScreenTitle),
    MyHomePage.routeName: (BuildContext context) =>
        new MyHomePage(title: strings.homeScreenTitle),
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
