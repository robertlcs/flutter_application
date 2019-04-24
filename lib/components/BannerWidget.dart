import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {

  static List BannerList = [
    {"src": "http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=d07967ecfd36afc31a013726db7081b1/78310a55b319ebc464735cb58826cffc1e171696.jpg", "title": "去听天空和海的声音"},
    {"src": "http://pic1.win4000.com/wallpaper/8/5799d2585cef1.jpg", "title": "这个城市，总会有适合你的声音"},
    {"src": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556111768539&di=8d8163bbf2d673df872317b6bc6c583e&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F0%2F50c9728959a6e.jpg", "title": "市声喧哗，一曲舒缓宁静"},
  ];

  List<Widget> buildListWidget() {
    List<Widget> list = [];
    for(int i = 0; i < BannerList.length; i ++) {
      list.add(new Stack(
        children: <Widget>[
          new Image.network(
            BannerList[i]['src'],
            height: 160.0,
            fit: BoxFit.fill,
          ),
          new Text(BannerList[i]['title'])
        ],
      ));
    }
    return list;
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: buildListWidget(),
    );
  }
}