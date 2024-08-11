import 'package:flutter/material.dart';
import '../../../models/drinkModel.dart';
import 'CupPainter.dart';

class Translate extends StatelessWidget {
  const Translate({
    super.key,
    required this.drink,
  });

  final Drinks drink;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -8),
      child: Center(
        child: CustomPaint(
          painter: CupPainter(drink: drink),
          child: Container(
            width: 120,
            height: 150,
            alignment: Alignment.center,
            child: Image.asset(drink.image, width: 69, height: 63),
          ),
        ),
      ),
    );
  }
}
