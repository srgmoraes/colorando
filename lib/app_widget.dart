import 'package:colorando3/intro_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
      // routes: {
      //   '/': (context) => NavigatePage(),
      //   '/mydraws': (context) => MyDrawsPage(),
      //   '/config': (context) => ConfigPage(),
      // }
    );
  }
}
