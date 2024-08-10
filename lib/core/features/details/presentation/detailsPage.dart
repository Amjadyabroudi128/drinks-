import 'package:flutter/material.dart';

import '../../models/drinkModel.dart';

class Detailspage extends StatelessWidget {
  static const String id = "detailsPage";
  final Drinks drink;

  const Detailspage({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(drink.name, style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50
        ),),
      ),
    );
  }
}
