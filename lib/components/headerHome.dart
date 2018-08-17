import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 0.0),
      height: 130.0,
      child: Card(
        color: Color(0xFF0A6242),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(
                        15.0, 5.0, 5.0, 0.0),
                    child: Text(
                      'Good Morning,',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pier',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(
                        15.0, 0.0, 5.0, 5.0),
                    child: Text(
                      'Luki Lawliet',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pier',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(
                            15.0, 5.0, 5.0, 5.0),
                        width: 30.0,
                        height: 30.0,
                        child: Image.asset(
                          "assets/images/ic_pay.png",
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          '¥ 5,000',
                          style: TextStyle(
                              fontFamily: 'Pier',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              width: 75.0,
              height: 75.0,
              child: Hero(
                tag: 'logo-starbuck',
                child: Image.asset("assets/images/logo_starbuck.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
