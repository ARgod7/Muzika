import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/colors.dart';

class AElevatedButtonTheme {
  AElevatedButtonTheme._();

  //light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AColors.primary500,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: AColors.primary500),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),
  );

  //dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AColors.primary700,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: AColors.primary700),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),
  );
}
