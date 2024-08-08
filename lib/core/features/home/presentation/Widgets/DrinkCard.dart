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


