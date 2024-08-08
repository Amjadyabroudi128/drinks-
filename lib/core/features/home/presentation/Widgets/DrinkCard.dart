import 'package:drinks/core/features/models/drinkModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../constatns/TextStyles.dart';

class DrinkCard extends StatelessWidget {
  final Drinks drink;

  DrinkCard({required this.drink});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 170,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Container(
            color: drink.color.withOpacity(0.81),
            child: Stack(
              children: [
                Transform.translate(
                  offset: Offset(0, -8),
                  child: Center(
                    child: CustomPaint(
                      size: Size(130, 150),
                      painter: CupPainter(drink: drink),
                      child: Container(
                        width: 120,
                        height: 150,
                        alignment: Alignment.center,
                        child: Image.asset(drink.image, width: 50, height: 50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 6),
        Text(drink.name, style: TextStyles.drinksNames),
      ],
    );
  }
}

class CupPainter extends CustomPainter {
  final Drinks drink;

  CupPainter({required this.drink});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = drink.color.withOpacity(0.97) // Darker shade of the drink color
      ..style = PaintingStyle.fill;

    Path path = Path();

    // Define the cup shape
    path.moveTo(size.width * 0.29, size.height);
    path.lineTo(size.width * 0.71, size.height);
    path.lineTo(size.width * 0.9, 0);
    path.lineTo(size.width * 0.1, 0);
    path.close();

    // Shadow Paint
    Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3) // Black shadow with some opacity
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 8); // Blur effect for soft shadow

    // Draw shadow by translating the cup slightly down and to the right
    canvas.save();
    canvas.translate(12, 8);
    canvas.drawPath(path, shadowPaint);
    canvas.restore();

    // Draw the actual cup
    canvas.drawPath(path, paint);
    // Add black outline
    Paint outlinePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0; // Adjust thickness as needed

    canvas.drawPath(path, outlinePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

