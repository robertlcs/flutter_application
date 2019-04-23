import 'package:fluro/fluro.dart';
import './router_handler.dart';

class Routes {

  static String musicView = "/music-view";
  static String videoView = "/video-view";
  static String newsView = "/news-view";

  static void configurationRoutes(Router router) {
    router.define(musicView, handler: homeHandler);
  }
}