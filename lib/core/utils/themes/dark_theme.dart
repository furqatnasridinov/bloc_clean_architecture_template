

import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  //fontFamily: 'Roboto',
  brightness: Brightness.dark, // Sets the overall brightness
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark, // Generates a dark color scheme
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.grey,
    foregroundColor: Colors.white,
  ),

  textTheme: TextTheme(
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