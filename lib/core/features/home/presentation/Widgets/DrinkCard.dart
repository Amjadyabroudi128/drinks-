import 'package:drinks/components/myContainer.dart';
import 'package:drinks/components/sizedBox.dart';
import 'package:drinks/core/features/home/presentation/Widgets/translateWidget.dart';
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
        SizedBox(
          height: 155,
          width: 163,
          child: myContainer(
            decoration: BoxDecoration(
                color: drink.color.withOpacity(0.91),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.transparent)
            ),
            child: Stack(
              children: [
                Translate(drink: drink),
              ],
            ),
          ),
        ),
        sizedBox(height: 6,),
        Text(drink.name, style: TextStyles.drinksNames),
      ],
    );
  }
}



