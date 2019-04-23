import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MusicPage_State();
  }
}

class MusicPage_State extends State<MusicPage> {

  static List tableDate = [
    {'text': '音乐', 'icon': new Icon(Icons.music_note)},
    {'text': '视频', 'icon': new Icon(Icons.videocam)},
    {'text': '新闻', 'icon': new Icon(Icons.near_me)},
    {'text': '我的', 'icon': new Icon(Icons.person)},
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("音乐馆"),
      ),
      body: new Center(
        child: new Text('这是一个测试文本'),
      ),
    );
  }
}