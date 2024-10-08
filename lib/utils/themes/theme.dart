import 'package:flutter/material.dart';
import 'package:spotify/utils/constants/colors.dart';
import 'package:spotify/utils/themes/custom_theme/appbar_theme.dart';
import 'package:spotify/utils/themes/custom_theme/bottom_sheet_theme.dart';
import 'package:spotify/utils/themes/custom_theme/checkbox_theme.dart';
import 'package:spotify/utils/themes/custom_theme/chip_theme.dart';
import 'package:spotify/utils/themes/custom_theme/elevated_button_theme.dart';
import 'package:spotify/utils/themes/custom_theme/outlined_button_theme.dart';
import 'package:spotify/utils/themes/custom_theme/text_field_theme.dart';
import 'package:spotify/utils/themes/custom_theme/text_theme.dart';

class AAppTheme {
  AAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Ubuntu',
    brightness: Brightness.light,
    primaryColor: AColors.primary500,
    scaffoldBackgroundColor: AColors.light,
    textTheme: ATextTheme.lightTextTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: AChipTheme.lightChipTheme,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    checkboxTheme: ACheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Ubuntu',
    brightness: Brightness.dark,
    primaryColor: AColors.primary700,
    scaffoldBackgroundColor: AColors.dark,
    textTheme: ATextTheme.darkTextTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: AChipTheme.darkChipTheme,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    checkboxTheme: ACheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: AOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.darkInputDecorationTheme,
  );
}
