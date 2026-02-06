

import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  //fontFamily: 'Roboto',
  brightness: Brightness.light, // Sets the overall brightness
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue, // Generates a harmonized color scheme
  ),
  // Define other properties like appBarTheme, button themes, etc.
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
  ),

  textTheme: const TextTheme(
    labelSmall: TextStyle(color: Colors.white, fontSize: 12),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 14,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
    ),
    headlineLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
  ),
);