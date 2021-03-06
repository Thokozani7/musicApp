import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'playsong_page/playsong_page.dart';
import 'showsongs_page/showsongs_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    ShowSongsPage.tag: (context) => ShowSongsPage(),
    // PlaySongPage.tag: (context) => PlaySongPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login APP',
      theme: ThemeData(
        // primarySwatch: Colors.yellow,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}