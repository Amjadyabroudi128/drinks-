
 import 'dart:ui';

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
    Drinks(name: "Cola", image: "image", color: Colors.red),
    Drinks(name: "Fanta", image: "image", color: Colors.orange)
  ];
 }
