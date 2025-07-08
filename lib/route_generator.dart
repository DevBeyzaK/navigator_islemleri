import 'package:flutter/material.dart';
import 'package:navigator_islemleri/blue_page.dart';
import 'package:navigator_islemleri/hataSayfasi.dart';
import 'package:navigator_islemleri/redpage.dart';
import 'package:navigator_islemleri/yellowpage.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Redpage());
      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => Yellowpage());
      case "/bluePage":
        String name = settings.arguments as String; //objeyi stringe döndürdük as yazarak
        return MaterialPageRoute(builder: (context) => BluePage(ad: name,));
      default:
        return MaterialPageRoute(builder: (context) => Hatasayfasi());
    }
  }
}
