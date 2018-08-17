import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_starbuck/navigators/myNavigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, () => MyNavigator.goToMain(context));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xFF54AF59),
      body: Center(
        child: Hero(
          tag: 'logo-starbuck',
          child: Image(
            width: 100.0,
            height: 100.0,
            image: AssetImage("assets/images/logo_starbuck.png"),
          ),
        ),
      ),
    );
  }
}
