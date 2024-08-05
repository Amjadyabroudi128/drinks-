import 'package:flutter/material.dart';

import '../components/myImages.dart';
import '../core/features/models/drinkModel.dart';

final List<Drinks> drink = [
  Drinks(name: "Cola", image: myImages.cola, color: Colors.red),
  Drinks(name: "dew", image: myImages.dew, color: Colors.greenAccent),
  Drinks(name: "fanta", image: myImages.fanta, color: Colors.orange),
  Drinks(name: "pepsi", image: myImages.pepsi, color: Colors.blue),
  Drinks(name: "sprite", image: myImages.sprite, color: Colors.green),
  Drinks(name: "pepper", image: myImages.pepper, color: Colors.red.shade800),
];