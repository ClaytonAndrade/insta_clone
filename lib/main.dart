import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black, fontFamily: "Aveny")
        ),
        textTheme: TextTheme(title: TextStyle(color: Colors.black))
      ),
      debugShowCheckedModeBanner: false,
      home: InstaHome(),
    );
  }
}