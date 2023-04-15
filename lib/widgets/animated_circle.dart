import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final Animation<double> animation;

  CirclePainter(this.animation) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      animation.value * size.width*10,
      paint,
    );
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return true;
  }
}