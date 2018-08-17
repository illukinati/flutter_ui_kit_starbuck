import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String link;
  final String title;
  final String desc;
  final double height;

  const NewsItem(
      {Key key, this.link, this.desc, this.height, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      height: this.height,
      child: Stack(
        children: <Widget>[
          Image(
            image: NetworkImage(
                this.link),
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0x80000000),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                        child: Text(
                          this.title,
                          style: TextStyle(
                              fontFamily: 'Pier',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          this.desc,
                          style: TextStyle(
                              fontFamily: 'Pier',
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
