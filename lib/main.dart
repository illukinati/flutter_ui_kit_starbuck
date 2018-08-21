
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_starbuck/navigators/myNavigator.dart';
import 'package:flutter_ui_kit_starbuck/screens/splashScreen.dart';
import 'package:map_view/map_view.dart';

void main() {
  MapView.setApiKey('AIzaSyDrHKl8IxB4cGXIoELXQOzzZwiH1xtsRf4');
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SplashScreen(),
      theme: new ThemeData(
          primarySwatch: Colors.green, // #0a6242
          accentColor: Colors.green[700],
          fontFamily: 'Pier',
          hintColor: Colors.brown),// #e2c287
      routes: MyNavigator.routes,
    );
  }
}
