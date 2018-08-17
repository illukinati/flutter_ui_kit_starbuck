import 'package:flutter/material.dart';

class PayScreen extends StatefulWidget {
  @override
  _PayScreenState createState() => new _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFE2C287),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
              height: 200.0,
              child: Image(
                image: AssetImage("assets/images/credit.png"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(12.0, 5.0, 10.0, 0.0),
              child: Text(
                'Your Balance : ¥ 5,000',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Pier',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
