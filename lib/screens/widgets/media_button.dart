import 'package:flutter/material.dart';

class MediaButton extends StatelessWidget {
  final icon;

  final double splashSize;

  final Function onPress;

  const MediaButton(this.icon, this.onPress, this.splashSize, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPress,
        child: Icon(icon),
      ),
      width: splashSize,
      height: splashSize,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
      ),
    );
  }
}
