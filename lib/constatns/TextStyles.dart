import 'package:drinks/core/features/themes/colors.dart';
import 'package:flutter/material.dart';
 class TextStyles {
   static TextStyle hint = TextStyle(
       color: hintColor
   );
   static TextStyle kFont19 = const TextStyle(
       fontSize: 19.0, color: Colors.black
   );
   static TextStyle Bold19 = const TextStyle(
       fontSize: 19.0, color: Colors.black, fontWeight: FontWeight.bold
   );
   static TextStyle Bold20 = const TextStyle(
       fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold
   );
   static TextStyle kFont20 = const TextStyle(
       fontSize: 20.0, color: Colors.black,
   );
   static TextStyle drinksNames = const TextStyle(
     fontSize: 19,
     fontWeight: FontWeight.w600
   );
   static TextStyle quantity = const TextStyle(
       color: Colors.white,
       fontSize: 30)
   ;
 }