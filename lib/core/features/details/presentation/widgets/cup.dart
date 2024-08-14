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
              child: Container(
                width: 120,
                height: 183, // Adjust this if needed
                alignment: Alignment.center,
                child: Image.asset(drink.image, width: 69, height: 63),
              ),
            ),
          ),
          const Positioned(
            height: 22,
            bottom: -9, // Aligns the Divider at the bottom of the Stack
            left: -10,
            right: 0,
            child: Divider(
              color: Colors.black45,
              thickness: 4,
              indent: 169,
              endIndent: 140,
            ),
          ),
        ],
      ),
    );
  }
}
