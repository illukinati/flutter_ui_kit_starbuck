import 'package:flutter/material.dart';

class CarouselProduct extends StatelessWidget {
  const CarouselProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Card(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/starbuck_1.jpg"),
              ),
            ),
          ),
          Card(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/starbuck_2.jpg"),
              ),
            ),
          ),
          Card(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/starbuck_3.jpg"),
              ),
            ),
          ),
          Card(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/starbuck_4.jpg"),
              ),
            ),
          ),
          Card(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/starbuck_1.jpg"),
              ),
            ),
          ),
          Card(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/starbuck_2.jpg"),
              ),
            ),
          ),
          Card(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/starbuck_3.jpg"),
              ),
            ),
          ),
          Card(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/starbuck_4.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
