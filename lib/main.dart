import 'package:flutter/material.dart';
import 'package:travel_buddy/screens/home-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff4AC188),
        accentColor: Color(0xff65CF9C),
        backgroundColor: Color(0xff65CF9C),
      ),
      home: HomePage(),
    );
  }
}

