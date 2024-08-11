import 'package:flutter/material.dart';

import '../components/myImages.dart';
import '../core/features/models/drinkModel.dart';

final List<Drinks> drinks = [
  Drinks(name: "cola", image: myImages.cola, color: Colors.redAccent.shade200, cupColor: Colors.red.shade800),
  Drinks(name: "dew", image: myImages.dew, color: Colors.lightGreenAccent, cupColor: Colors.lightGreenAccent),
  Drinks(name: "fanta", image: myImages.fanta, color: Colors.orange, cupColor: Colors.orange),
  Drinks(name: "pepsi", image: myImages.pepsi, color: Colors.blue.shade300, cupColor: Colors.blue.shade900),
  Drinks(name: "sprite", image: myImages.sprite, color: Colors.green, cupColor: Colors.green),
  Drinks(name: "pepper", image: myImages.pepper, color: Colors.red.shade800, cupColor: Colors.red.shade700),
];