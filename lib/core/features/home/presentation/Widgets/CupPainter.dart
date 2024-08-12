import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/drinkModel.dart';

class CupPainter extends CustomPainter {
  final Drinks drink;

  CupPainter({required this.drink});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = drink.cupColor // Darker shade of the drink color
      ..style = PaintingStyle.fill;

    Path path = Path();

    // Define the cup shape
    path.moveTo(size.width * 0.22, size.height);
    path.lineTo(size.width * 0.75, size.height);
    path.lineTo(size.width * 0.9, 0);
    path.lineTo(size.width * 0.1, 0);
    path.close();

    // Shadow Paint
    Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.35) // Black shadow with some opacity
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 4); // Blur effect for soft shadow

    // Draw shadow by translating the cup slightly down and to the right
    canvas.save();
    canvas.translate(12, 8);
    canvas.drawPath(path, shadowPaint);
    canvas.restore();

    // Draw the actual cup
    canvas.drawPath(path, paint);
    // Add black outline
    Paint outlinePaint = Paint()
      ..color = Colors.black38
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0; // Adjust thickness as needed

    canvas.drawPath(path, outlinePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}