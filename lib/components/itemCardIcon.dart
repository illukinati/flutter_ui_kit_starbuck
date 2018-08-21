import 'package:flutter/material.dart';

class ItemCardIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;

  const ItemCardIcon({Key key, this.icon, this.title, this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              this.icon,
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  this.desc,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
