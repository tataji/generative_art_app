import 'dart:math';

import 'package:flutter/material.dart';

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    renderStructure(canvas,size,1000,0);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  void renderStructure(Canvas canvas, Size size, int iter, int initIter) {
    if (iter == 0) {
      return;
    }
    double distance = 0.0;
    List<Color> colors =  [];
    colors.add(Colors.greenAccent);
    colors.add(Colors.deepOrange);
    colors.add(Colors.grey);colors.add(Colors.indigo);colors.add(Colors.lightGreenAccent);

    Color c = colors[Random().nextInt(colors.length)];
    for (double i = 0; i < 1000; i = i + 0.01) {
      canvas.drawCircle(Offset((size.width/2)+(distance*atan(distance)*sin(distance)*cos(distance)),
            (size.width/2)+(distance*cos(distance)*sin(distance)*tan(distance)),),
          5.0-(0.5 * (initIter-iter)), Paint()..color = c,);
    distance = distance + (0.2 + (0.1 * initIter-iter));
    }
// Recursively call the next iteration
    renderStructure(canvas, size, iter-1, initIter);
  }

}