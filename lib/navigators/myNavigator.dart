import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_starbuck/navigators/customRoute.dart';
import 'package:flutter_ui_kit_starbuck/screens/mainScreen.dart';

class MyNavigator {
  static final routes = <String, WidgetBuilder>{
    '/main': (BuildContext context) => MainScreen(),
  };
  
  static Future goToMain(BuildContext context) async {
    Navigator.of(context).push(new AppPageRoute(builder: (BuildContext context) => new MainScreen()));
  }
}