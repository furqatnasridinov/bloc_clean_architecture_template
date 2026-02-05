

import 'package:bloc_clean_architecture_template/core/utils/themes/dark_theme.dart';
import 'package:bloc_clean_architecture_template/core/utils/themes/light_theme.dart';

enum AppTheme {
  dark,
  light,
}

final appThemeData = {
  AppTheme.light: lightTheme,
  AppTheme.dark: darkTheme,
};
