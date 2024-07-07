import 'package:flutter/material.dart';
import 'package:login/src/constants/colors.dart';
import 'package:login/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:login/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:login/src/utils/theme/widget_themes/text_form_field_theme.dart';
import 'package:login/src/utils/theme/widget_themes/text_theme.dart';

extension CustomColorSchemeX on ColorScheme {
  Color? get myColor =>
      brightness == Brightness.light ? Colors.blue : Colors.red;
}

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: CustomTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
