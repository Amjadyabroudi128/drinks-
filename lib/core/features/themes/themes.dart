 import 'package:flutter/material.dart';

class AppTheme {
  static final _border = OutlineInputBorder(
    borderSide:  BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.circular(15),
  );
  static final themeData = ThemeData().copyWith(
    inputDecorationTheme:  InputDecorationTheme(
      prefixIconColor: Colors.black,
      suffixIconColor: Colors.black,
      enabledBorder: _border,
      focusedBorder: _border,
    )
  );
 }