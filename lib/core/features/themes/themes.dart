 import 'package:drinks/core/features/themes/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final _border = OutlineInputBorder(
    borderSide:  BorderSide(color: borderColor, width: 3),
    borderRadius: BorderRadius.circular(15),
  );
  static final themeData = ThemeData().copyWith(
    inputDecorationTheme:  InputDecorationTheme(
      prefixIconColor: blackIcon,
      suffixIconColor: blackIcon,
      enabledBorder: _border,
      focusedBorder: _border,
    )
  );
 }