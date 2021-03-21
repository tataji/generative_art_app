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
    double distance = 0.0;
    List<Color> colors =  [];
    colors.add(Colors.greenAccent);colors.add(Colors.lightGreenAccent);
    colors.add(Colors.deepOrangeAccent);colors.add(Colors.indigo);colors.add(Colors.lightGreenAccent);
    Color c = colors[Random().nextInt(colors.length)];
    for (double i = 0; i < 1000; i = i + 0.001) {
      canvas.drawCircle(Offset((size.width)+(distance*atan(distance)*sin(distance)*cos(distance)),
        (size.width)+(distance*cos(distance)*sin(distance)*tan(distance)),),
        10.0-(0.5 * (i)), Paint()..color = Colors.green,);
      distance = distance + (0.12 + (0.6 * i));

      canvas.drawCircle(Offset((size.width/2)+(distance*atan(distance)*sin(distance)*cos(distance)),
        (size.width/2)+(distance*cos(distance)*sin(distance)*tan(distance)),),
        4.0-(0.5 * (i)), Paint()..color = Colors.yellowAccent,);
      distance = distance + (0.12 + (0.6 * i));

      canvas.drawCircle(Offset((size.width/8)+(distance*atan(distance)*sin(distance)*cos(distance)),
        (size.width/8)+(distance*cos(distance)*sin(distance)*tan(distance)),),
        2.0-(0.5 * (i)), Paint()..color = Colors.deepOrangeAccent,);
      distance = distance + (0.12 + (0.6 * i));
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}