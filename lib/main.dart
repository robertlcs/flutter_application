import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_application/routes/routers.dart';
import 'package:flutter_application/views/MusicPage.dart';

const int ThemeColor = 0xFF31C27C;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  MyApp() {
    Router router = new Router();
    Routes.configurationRoutes(router);
  }

  showWelcomePage() {
    return new MusicPage();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '麦子FM',
      theme: new ThemeData(
        primaryColor: Color(ThemeColor),
        accentColor: Color(ThemeColor),
        textTheme: TextTheme(
          body1: TextStyle(color: Color(0x00000000), fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          color: Color(ThemeColor),
          size: 35.0
        )
      ),
      home: showWelcomePage(),
    );
  }
}