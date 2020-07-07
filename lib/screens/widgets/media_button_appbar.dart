import 'package:flutter/material.dart';

class MediaButtonAppBar extends StatelessWidget {
  final icon;

  final Function onPress;

  const MediaButtonAppBar(this.icon, this.onPress, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPress,
        child: Icon(icon),
      ),
      width: 55,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
      ),
    );
  }
}
