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
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 10.0),
                      child: new NewsItem(
                        link:
                            'https://starbuckssecretmenu.net/wp-content/uploads/2018/03/Starbucks-Crystal-Ball-Frappuccino.jpg',
                        title: 'Bubbles',
                        desc: 'Fill your mouth wi..',
                        height: 200.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 10.0),
                      child: new NewsItem(
                        link:
                            'https://i.pinimg.com/236x/90/e0/95/90e095c925f5a5d9ca182c169c17a294--starbucks-pictures-starbucks-wallpaper.jpg',
                        title: 'Stpd',
                        desc: 'Only for stpd people',
                        height: 200.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
