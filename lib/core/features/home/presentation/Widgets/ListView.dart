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
      child: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: drinks.length,
          itemBuilder: (context, index) {
            return Transform.translate(
                offset: Offset(0, index.isEven ? -28 : -5), // Adjust the offset based on the index
                child: DrinkCard(drink: drinks[index])
            );
          }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisExtent: 200,
        ),
        ),
      ),
    );
  }
}
