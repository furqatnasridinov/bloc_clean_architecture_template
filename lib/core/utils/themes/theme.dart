

import 'package:bloc_clean_architecture_template/core/utils/themes/dark_theme.dart';
import 'package:bloc_clean_architecture_template/core/utils/themes/light_theme.dart';
import 'package:flutter/material.dart';

enum AppTheme {
  dark,
  light,
}

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.light: lightTheme,
  AppTheme.dark: darkTheme,
};
