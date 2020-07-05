import 'package:flutter/material.dart';

import 'package:my_own_soundboard/screens/info_screen/info_screen.dart';
import 'package:my_own_soundboard/screens/library/library_screen.dart';
import 'package:my_own_soundboard/strings.dart';

class Menu extends StatelessWidget {
  final Strings strings = Strings.getInstance(lang: "nl");
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return PopupMenuButton(
      icon: Icon(Icons.more_vert),
      onSelected: itemAction,
      itemBuilder: (BuildContext context) {
        return strings.menuItems.map((String item) {
          return PopupMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList();
      },
    );
  }

  void itemAction(String item) {
    if (item == strings.menuSettings) {
      print("u pressed settings");
    } else if (item == strings.menuInfo) {
      Navigator.pushReplacementNamed(context, InfoScreen.routeName);
    } else if (item == strings.menuLibrary) {
      Navigator.pushReplacementNamed(context, LibraryScreen.routeName);
    }
  }
}
