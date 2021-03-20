import 'package:flutter/material.dart';
import 'package:generative_art_app/DemoPainter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          child: CustomPaint(
            painter: DemoPainter(),
            child: Container(),
          ),
        ),
      ),
    );
  }
}


