import 'package:drinks/constatns/drinksList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../../../details/presentation/detailsPage.dart';
import '../../../models/drinkModel.dart';
import 'DrinkCard.dart';
class DrinksList extends StatelessWidget {
  final Drinks? drink;

  const DrinksList({super.key, this.drink,});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollBehavior(),
      child: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: drinks.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailspage(drink: drinks[index]),
                  ),
                );
              },
              child: Transform.translate(
                offset: Offset(0, index.isEven ? -28 : -9),
                child: DrinkCard(drink: drinks[index]),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 200,
          ),
        ),
      ),
    );
  }
}

