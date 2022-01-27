
import 'package:coffeshopday04/page/coffeePage.dart';
import 'package:coffeshopday04/page/homePage.dart';
import 'package:coffeshopday04/page/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Sk-Modernist',
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}




