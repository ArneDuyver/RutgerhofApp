import 'package:flutter/material.dart';
import 'package:my_own_soundboard/models/model.dart';
import 'package:my_own_soundboard/screens/home_screen/sound_card.dart';
import 'package:my_own_soundboard/screens/widgets/media_button.dart';

class SoundPage extends StatefulWidget {
  final _page;

  SoundPage(this._page, {Key key}) : super(key: key);

  @override
  _SoundPageState createState() => _SoundPageState();
}

class _SoundPageState extends State<SoundPage> {
  @override
  Widget build(BuildContext context) {
    var _page = widget._page;
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
                child: Text(
                  _page[Model.pageTitleKey],
                  overflow: TextOverflow.ellipsis,
                  style: new TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              MediaButton(Icons.edit, () {}, 45),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                ...(_page[Model.pageSoundsListKey] as List<dynamic>)
                    .map((sound) {
                  return SoundCard(sound);
                }).toList()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
