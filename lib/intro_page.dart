import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'navigate_page.dart';

class IntroPage extends StatefulWidget {
  @override
  State<IntroPage> createState() {
    return IntroPageState();
  }
}

class IntroPageState extends State<IntroPage> {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.purple
            ],
          ),
          navigateAfterSeconds: NavigatePage(),
          loaderColor: Colors.transparent,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.none,
            ),
          ),
        ),
      ],
    );

  }

}