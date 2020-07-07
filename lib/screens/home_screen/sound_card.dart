import 'package:flutter/material.dart';
import 'package:my_own_soundboard/models/sound_item.dart';
import 'package:my_own_soundboard/screens/widgets/media_button.dart';

class SoundCard extends StatefulWidget {
  final SoundItem _sound;

  SoundCard(this._sound, {Key key}) : super(key: key);

  @override
  _SoundCardState createState() => _SoundCardState();
}

class _SoundCardState extends State<SoundCard> {
  static const double splashSize = 35;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 194,
      height: 100,
      child: Card(
        color: Colors.lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Text(
                widget._sound.soundName,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              padding: EdgeInsets.all(8.0),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MediaButton(Icons.play_arrow, () {}, splashSize),
                  MediaButton(Icons.stop, () {}, splashSize),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
