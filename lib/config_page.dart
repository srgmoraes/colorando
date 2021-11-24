import 'package:colorando3/settings.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfigWidget(),
    );
  }
}

class ConfigWidget extends StatefulWidget {
  const ConfigWidget({Key? key}) : super(key: key);

  @override
  State<ConfigWidget> createState() => _ConfigWidgetState();
}

class _ConfigWidgetState extends State<ConfigWidget> {
  bool _sound = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
          title: const Text('Volume'),
          value: _sound,
          onChanged: (bool value) {
            Settings.changeBackgroundSong(value);
            setState(() {
              _sound = value;
            });
          },
          secondary: const Icon(Icons.volume_up),
        ),
        SwitchListTile(
          title: const Text('Teste'),
          value: false,
          onChanged: (bool value) {
            setState(() {
            });
          },
          secondary: const Icon(Icons.grid_view),
        ),
      ],
    );
  }
}