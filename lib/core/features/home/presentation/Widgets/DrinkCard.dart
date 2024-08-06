import 'package:drinks/core/features/models/drinkModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrinkCard extends StatelessWidget {
  final Drinks drink;

  DrinkCard({required this.drink});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Card(
        margin: EdgeInsets.all(10.0),
        color: drink.color.withOpacity(0.7),
        child: ListTile(
          leading: Image.asset(drink.image, width: 50, height: 50), // Add your images in the assets folder
          title: Text(drink.name),
        ),
      ),
    );
  }
}