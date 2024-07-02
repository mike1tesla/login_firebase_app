import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      prefixIconColor: secondaryColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      floatingLabelStyle: const TextStyle(color: secondaryColor),
      labelStyle: const TextStyle(color: secondaryColor),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 2, color: secondaryColor),
        borderRadius: BorderRadius.circular(10)
      ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      prefixIconColor: whiteColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      floatingLabelStyle: const TextStyle(color: whiteColor),
      labelStyle: const TextStyle(color: whiteColor),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 2, color: whiteColor),
          borderRadius: BorderRadius.circular(10)
      ),
  );
}
