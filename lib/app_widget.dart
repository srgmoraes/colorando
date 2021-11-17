import 'package:colorando3/config_page.dart';
import 'package:colorando3/mydraws_page.dart';
import 'package:colorando3/navigate_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => NavigatePage(),
          '/mydraws': (context) => MyDrawsPage(),
          '/config': (context) => ConfigPage(),
        }
      );
  }
}


