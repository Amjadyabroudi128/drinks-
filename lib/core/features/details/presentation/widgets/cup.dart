import 'package:drinks/components/myContainer.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/Widgets/CupPainter.dart';
import '../../../models/drinkModel.dart';

class CupPlace extends StatelessWidget {
  const CupPlace({
    super.key,
    required this.drink,
  });

  final Drinks drink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 47), // Padding above the image remains
      child: Stack(
        children: [
          Center(
            child: CustomPaint(
              painter: CupPainter(drink: drink),
              child: myContainer(
                width: 120.0,
                height: 175.0,
                alignment: Alignment.center,
                child: drinkImage(drink: drink),
              ),
            ),
          ),
           const Positioned(
            height: 22,
            bottom: -9, // Aligns the Divider at the bottom of the Stack
            left: -10,
            right: 0,
            child: Divider(),
          ),
        ],
      ),
    );
  }
}

class drinkImage extends StatelessWidget {
  const drinkImage({
    super.key,
    required this.drink,
  });

  final Drinks drink;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      drink.image,
      width: 56,
      height: 126,
    );
  }
}
