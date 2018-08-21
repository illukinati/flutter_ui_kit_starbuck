import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_starbuck/components/itemCardIcon.dart';

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
              margin: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(8.0, 0.0, 20.0, 0.0),
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '¥ 5,000',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Pier',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Container(
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 10.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    new ItemCardIcon(
                      icon: Icons.chrome_reader_mode,
                      title: 'Wallet',
                      desc: 'Description',
                    ),
                    Container(
                      height: 1.0,
                      color: Colors.black,
                    ),
                    new ItemCardIcon(
                      icon: Icons.ac_unit,
                      title: 'Pay',
                      desc: 'Description',
                    ),
                    Container(
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
