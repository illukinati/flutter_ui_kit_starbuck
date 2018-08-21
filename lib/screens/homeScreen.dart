import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_starbuck/components/carouselProduct.dart';
import 'package:flutter_ui_kit_starbuck/components/headerHome.dart';
import 'package:flutter_ui_kit_starbuck/components/newsItem.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2C287),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFE2C287),
          child: Column(
            children: <Widget>[
              new HeaderHome(),
              Container(
                margin: const EdgeInsets.fromLTRB(12.0, 0.0, 10.0, 0.0),
                child: new NewsItem(
                  link:
                      'https://assets.change.org/photos/7/ou/zi/OlOuziNRVcXqzpX-1600x900-noPad.jpg',
                  title: 'New Flavours',
                  desc: 'Life is too short to only have one taste.',
                  height: 200.0,
                ),
              ),
              Text(
                'Favourites Product',
                style: TextStyle(
                    fontFamily: 'Pier', fontSize: 20.0, color: Colors.black),
              ),
              new CarouselProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
