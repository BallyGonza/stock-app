import 'package:flutter/material.dart';
import 'package:stock_app/data/constants/colors.dart';

ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  fontFamily: 'StyreneB',
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'StyreneB',
    ),
  ),
);
