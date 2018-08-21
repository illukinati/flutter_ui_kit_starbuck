import 'package:flutter/material.dart';

class CouponsItem extends StatelessWidget {
  final String couponImage;

  const CouponsItem({
    Key key, this.couponImage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  height: 120.0,
                  image: AssetImage(this.couponImage),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
