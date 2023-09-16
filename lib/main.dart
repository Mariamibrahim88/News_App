import 'package:flutter/material.dart';
import 'package:news_app2/splash.dart';
import 'package:news_app2/views/nav.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar(title: Text('News App'),elevation: 0,);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash()
    );
  }
}









