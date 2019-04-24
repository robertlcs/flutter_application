import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/views/HomePage.dart';

// app的首页
var homeHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new HomePage();
  },
);