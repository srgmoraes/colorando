import 'package:colorando3/settings.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwitchListTileDemo(),
    );
  }
}

class SwitchListTileDemo extends StatefulWidget {
  @override
  _SwitchListTileDemoState createState() => _SwitchListTileDemoState();
}

class _SwitchListTileDemoState extends State<SwitchListTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.topLeft,
        child: Card(
          color: Colors.white,
          child: SwitchListTile(
            title: Text(
              'Música',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
            value: Settings.getPlayBackground(),
            activeColor: Colors.purple,
            inactiveTrackColor: Colors.grey,
            onChanged: (bool value) {
              Settings.changeBackgroundSong(value);
              setState(() {
                Settings.setPlayBackground(value);
              });
            },
            secondary: Image.asset(
              "assets/music.png",
              height: 30.0,
            ),
            controlAffinity: ListTileControlAffinity.trailing,
          ),
        ),
      ),
    );
  }
}
