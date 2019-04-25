import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  Widget buildListCard(String src) {
    Color color = Colors.black45;
    return new Image.asset(
      src,
      height: 160.0,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 180.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          buildListCard("images/banner1.jpg"),
          buildListCard("images/banner2.jpg"),
          buildListCard("images/banner3.jpg"),
        ],
      ),
    );
  }
}
