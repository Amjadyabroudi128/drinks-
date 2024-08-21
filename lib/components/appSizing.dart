
import 'package:flutter/material.dart';
class AppSizing{
  static double width(BuildContext context) => MediaQuery.of(context).size.width;
  static double height(BuildContext context) => MediaQuery.of(context).size.height;
  static double height54(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.53;
  }
}