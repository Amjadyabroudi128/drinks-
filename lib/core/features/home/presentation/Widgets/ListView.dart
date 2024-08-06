import 'package:drinks/constatns/drinksList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../../../models/drinkModel.dart';
import 'DrinkCard.dart';

class DrinksList extends StatelessWidget {
  final Drinks? drink;

  const DrinksList({super.key, this.drink,});
  @override
  Widget build(BuildContext context) {
    return  ScrollConfiguration(
      behavior: ScrollBehavior(),
      child: ListView.builder(
        itemCount: drinks.length,
        itemBuilder: (context, index) {
          return DrinkCard(drink: drinks[index]);
        },
      ),
    );
  }
}
