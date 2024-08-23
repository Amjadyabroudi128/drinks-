import 'package:flutter/material.dart';

import '../core/features/models/drinkModel.dart';

class drinkImage extends StatelessWidget {
  const drinkImage({
    super.key,
    required this.drink, this.height, this.width,
  });

  final Drinks drink;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      drink.image,
      width: 56,
      height: 126,
    );
  }
}
