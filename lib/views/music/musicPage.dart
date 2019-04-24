import 'package:flutter/material.dart';

import 'package:flutter_application/components/BannerWidget.dart';

class MusicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MusicPageState();
  }
}

class MusicPageState extends State<MusicPage> {

  Color color = Colors.black45;
  Color mainColor = Color(0xFF31C27C);

  @override
  Widget build(BuildContext context) {

    Widget bottomSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildCloumn(Icons.person, '我的'),
          buildCloumn(Icons.insert_chart, '排行'),
          buildCloumn(Icons.favorite, '喜欢'),
          buildCloumn(Icons.list, '歌单'),
        ],
      ),
    );

    // TODO: implement build
      return new Scaffold(
        appBar: new AppBar(
          backgroundColor: mainColor,
          centerTitle: true,
          title: new Text("音乐馆", style: new TextStyle(fontSize: 18.0, color: Colors.white)),
        ),
        body: new ListView(
          children: <Widget>[
            bottomSection
          ],
        ),
      );
  }

  Column buildCloumn(IconData icon, String label) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Icon(icon),
        new Text(
          label,
          style: new TextStyle(
              fontSize: 12.0,
              color: color,
              fontWeight: FontWeight.w800
          )
        ),
      ],
    );
  }
}