import 'package:drinks/core/features/models/drinkModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../constatns/TextStyles.dart';
import 'CupPainter.dart';

class DrinkCard extends StatelessWidget {
  final Drinks drink;

  DrinkCard({required this.drink});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: 150,
          child: Container(
            decoration: BoxDecoration(
                color: drink.color.withOpacity(0.81),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all()),
            child: Stack(
              children: [
                Transform.translate(
                  offset: Offset(0, -8),
                  child: Center(
                    child: CustomPaint(
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


