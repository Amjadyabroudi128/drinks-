
 import 'dart:ui';

import 'package:drinks/components/myImages.dart';
import 'package:flutter/material.dart';
class Drinks {
  late String image;
  late String name;
  late Color color;

  Drinks({
    required this.name,
    required this.image,
    required this.color,
 });
  final List<Drinks> drink = [
    Drinks(name: "Cola", image: myImages.cola, color: Colors.red),
    Drinks(name: "dew", image: myImages.dew, color: Colors.greenAccent),
    Drinks(name: "fanta", image: myImages.fanta, color: Colors.orange),
    Drinks(name: "pepsi", image: myImages.pepsi, color: Colors.blue),
    Drinks(name: "sprite", image: myImages.sprite, color: Colors.green),


  ];
 }
