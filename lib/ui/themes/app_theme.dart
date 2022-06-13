import 'package:flutter/material.dart';
import 'package:flutter_template/ui/themes/app_colors.dart';
import 'package:flutter_template/ui/themes/app_text_styles.dart';
import 'package:flutter_template/ui/themes/app_text_theme.dart';

extension AppThemeBuildContext on BuildContext {
  AppTheme get theme {
    return AppTheme(this);
  }
}

class AppTheme {
  late AppColors colors;
  late ThemeData themeData;
  late AppTextStyles textStyles;

  AppTheme(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    _initialize(brightness);
  }

  AppTheme.dark() {
    _initialize(Brightness.dark);
  }

  AppTheme.light() {
    _initialize(Brightness.light);
  }

  void _initialize(Brightness brightness) {
    ThemeData tmpTheme;
    if (brightness == Brightness.light) {
      colors = AppLightColors();
      tmpTheme = ThemeData.light();
    } else {
      colors = AppDarkColors();
      tmpTheme = ThemeData.dark();
    }
    textStyles = AppTextStyles(brightness);
    themeData = tmpTheme.copyWith(
      primaryColor: colors.primary,
      textTheme: AppTextTheme(brightness: brightness).theme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: colors.primary,
      ),
    );
  }
}
