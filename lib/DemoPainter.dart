import 'dart:math';

import 'package:flutter/material.dart';

class DemoPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
   //  var paint1 = Paint()
   //    ..color = Color(0xff63aa65)
   //    ..style = PaintingStyle.fill;
   //  //a circle
   //  canvas.drawCircle(Offset(200, 200), 100, paint1);
    drawCircles(canvas,size,1000);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  void drawCircles(Canvas canvas, Size size, int index) {
    if (index == 0) {
      return;
    }
    double distance = 0.0;
    List<Color> colors =  [];
    colors.add(Colors.greenAccent);colors.add(Colors.lightGreenAccent);
    colors.add(Colors.deepOrangeAccent);colors.add(Colors.indigo);colors.add(Colors.lightGreenAccent);

    Color c = colors[Random().nextInt(colors.length)];
    for (double i = 0; i < 1000; i = i + 0.01) {
      canvas.drawCircle(Offset((size.width/5)+(distance*atan(distance)*sin(distance)*cos(distance)),
        (size.width/5)+(distance*cos(distance)*sin(distance)*tan(distance)),),
        5.0-(0.5 * (i)), Paint()..color = c,);
      distance = distance + (0.2 + (0.1 * i + 20));
    }
    drawCircles(canvas, size, index-1);
  }

}