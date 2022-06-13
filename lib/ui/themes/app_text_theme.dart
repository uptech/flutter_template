import 'package:flutter/material.dart';
import 'package:flutter_template/ui/themes/app_text_styles.dart';

class AppTextTheme {
  late TextTheme theme;
  late AppTextStyles styles;
  late Brightness brightness;

  AppTextTheme({
    required Brightness brightness,
    Typography? typography,
  }) {
    typography ??= Typography.material2018();

    if (brightness == Brightness.light) {
      theme = typography.black;
    } else {
      theme = typography.white;
    }

    styles = AppTextStyles(brightness);

    theme = theme.copyWith(
      bodyText1: styles.body,
    );
  }
}
