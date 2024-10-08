 import 'package:drinks/constatns/Constants.dart';
import 'package:drinks/constatns/TextStyles.dart';
import 'package:drinks/core/features/themes/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final _border = OutlineInputBorder(
    borderSide:  BorderSide(color: borderColor, width: 3),
    borderRadius: BorderRadius.circular(22),
  );
  static final themeData = ThemeData().copyWith(
    iconTheme: IconThemeData(
      color: defaultIconColor,
      size: defaultIconSize,
    ),
    inputDecorationTheme:  InputDecorationTheme(
        contentPadding: EdgeInsets.all(10.0),
        prefixIconColor: blackIcon,
      suffixIconColor: blackIcon,
      enabledBorder: _border,
      focusedBorder: _border,
      hintStyle: TextStyles.hint
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.black45,
      thickness: 4,
      indent: 180,
      endIndent: 140,
    ),
  );
 }