import 'package:flutter/material.dart';
import 'package:flutterapp/Home.dart';
import 'package:flutterapp/test.dart';
import 'package:flutterapp/waytodothoughttwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Test(),
    );
  }
}
