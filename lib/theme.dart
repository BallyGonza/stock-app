import 'package:flutter/material.dart';
import 'package:template_app/data/constants/colors.dart';

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: backgroundColor,
  colorScheme: ColorScheme.fromSeed(seedColor: accentColor).copyWith(
    primary: primaryColor,
    primaryContainer: primaryColor,
    secondary: secondaryColor,
    secondaryContainer: secondaryColor,
    surfaceTint: accentColor,
  ),
  primaryColor: Colors.white,
  fontFamily: 'StyreneB',
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'StyreneB',
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primaryColor,
  ),
  navigationBarTheme: const NavigationBarThemeData(
    indicatorColor: primaryColor,
  ),
  cardColor: secondaryColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(accentColor),
      foregroundColor: WidgetStateProperty.all(Colors.white),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(accentColor),
      foregroundColor: WidgetStateProperty.all(Colors.white),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.white),
      foregroundColor: WidgetStateProperty.all(accentColor),
    ),
  ),
);
