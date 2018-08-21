import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_starbuck/components/couponItem.dart';

class GiftScreen extends StatefulWidget {
  @override
  _GiftScreenState createState() => new _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: <Widget>[
              new CouponsItem(
                couponImage: 'assets/images/coupons.jpg',
              ),
              new CouponsItem(
                couponImage: 'assets/images/coupons2.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
