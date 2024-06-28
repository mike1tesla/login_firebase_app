import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: secondaryColor,
        foregroundColor: whiteColor,
        padding: const EdgeInsets.symmetric(vertical: buttonHeight),
        side: const BorderSide(color: secondaryColor)),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: whiteColor,
        foregroundColor: secondaryColor,
        padding: const EdgeInsets.symmetric(vertical: buttonHeight),
        side: const BorderSide(color: whiteColor)),
  );
}
