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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: new Text("音乐馆", style: new TextStyle(fontSize: 18.0, color: Colors.white)),
        ),
      );
  }
}