import 'package:flutter/material.dart';
import 'package:flutter_template/ui/themes/app_colors.dart';

// Define the text styles here and enable them in AppTextTheme
class AppTextStyles {
  late AppColors colors;
  String defaultFont = 'Proxima Nova';
  Color defaultTextColor = Colors.white;

  AppTextStyles(brightness) {
    switch (brightness) {
      case Brightness.light:
        colors = AppLightColors();
        break;
      case Brightness.dark:
        colors = AppDarkColors();
        break;
    }
  }

  TextStyle get body => TextStyle(
        fontFamily: defaultFont,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        color: defaultTextColor,
      );
}
