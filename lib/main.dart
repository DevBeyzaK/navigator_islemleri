import 'package:flutter/material.dart';
import 'package:navigator_islemleri/blue_page.dart';
import 'package:navigator_islemleri/hataSayfasi.dart';
import 'package:navigator_islemleri/redpage.dart';
import 'package:navigator_islemleri/route_generator.dart';
import 'package:navigator_islemleri/yellowpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*routes: {
        "/": (context) =>
            Redpage(), //redPagei kök dizin yaptık hepsinde burdan başlatırız.
        "/yellowPage": (context) => Yellowpage(),
        "/bluePage": (context) => BluePage(),
      },*/
      onGenerateRoute:RouteGenerator.routeGenerator ,
     /* onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => Hatasayfasi()); //bu rotasını yanlış yazdığımızda sayfaya değil de hata sayfasına gider.
      },*/
      debugShowCheckedModeBanner: false,
      home: Redpage(), //homeu artık deaktif yapman lazım ki hata vermesin. Kök dizin oluşturduysak home sil.
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
