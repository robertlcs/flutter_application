import 'package:flutter/material.dart';

import 'package:flutter_application/views/music/musicPage.dart';
import 'package:flutter_application/views/video/VideoPage.dart';
import 'package:flutter_application/views/news/NewsPage.dart';
import 'package:flutter_application/views/account/AccountPage.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: TabBarView(
          controller: controller,
          children: <Widget>[
            new MusicPage(),
            new VideoPage(),
            new NewsPage(),
            new AccountPage()
          ]
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: new TabBar(
          controller: controller,
          labelColor: Color(0xFF31C27C),
          labelStyle: new TextStyle(
            fontSize: 14,
          ),
          tabs: <Widget>[
            new Tab(text: '音乐', icon: new Icon(Icons.music_note)),
            new Tab(text: '视频', icon: new Icon(Icons.videocam)),
            new Tab(text: '新闻', icon: new Icon(Icons.near_me)),
            new Tab(text: '我的', icon: new Icon(Icons.person))
          ],
        )
      ),
    );
  }
}