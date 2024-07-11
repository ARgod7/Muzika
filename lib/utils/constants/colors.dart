import 'package:flutter/material.dart';

class AColors {
  AColors._();

  // App Basic Colors
  static const Color primary50 = Color(0xFFf6f2ff);
  static const Color primary100 = Color(0xFFe2d4ff);
  static const Color primary200 = Color(0xFFccb0ff);
  static const Color primary300 = Color(0xFFb68cff);
  static const Color primary400 = Color(0xFFa269ff);
  static const Color primary500 = Color(0xFF9146ff);
  static const Color primary600 = Color(0xFF8331f5);
  static const Color primary700 = Color(0xFF721de0);
  static const Color primary800 = Color(0xFF5e0cc2);
  static const Color primary900 = Color(0xFF470099);

  // Gradiant
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0, 0),
      end: Alignment(0.707, -0.707),
      colors: [
        Colors.purple,
        Color.fromARGB(255, 164, 81, 179),
        Color.fromARGB(255, 164, 115, 173),
      ]);

  // Text Colors
  static const Color textPrimaryLight = Color(0xffffffff);
  static const Color textPrimaryDark = Color(0xff000000);
  static const Color textSecondaryLight = Color(0xffaaaaaa);
  static const Color textSecondaryDark = Color(0xff777777);
  static const Color textAccent = Colors.white;

  // Background colors
  static const Color light = Color(0xfff1f1f1);
  static const Color dark = Color(0xff0e0e0e);
  static const Color bottomDark = Color(0xff808080);
  static const Color bottomlight = Color(0xffffffff);
  static const Color primaryBackground = Colors.white;

  // background container color
  static const Color lightContainer = Colors.white;
  static Color darkContainer = Colors.white.withOpacity(0.1);

  // button color
  static const Color buttonPrimary = Color(0xff9146ff);
  static const Color buttonSecondary = Colors.black12;
  static const Color buttonDisabled = Colors.grey;

  // Border color
  static const Color borderPrimary = Colors.white;
  static const Color borderSecondary = Colors.white;

  // Error and Validation color
  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
  static const Color info = Colors.blue;

  // Neutral shade color
  static const Color black = Colors.black;
  static const Color darkerGrey = Color.fromARGB(255, 65, 65, 65);
  static const Color darkGrey = Color.fromARGB(255, 95, 95, 95);
  static const Color softGrey = Color.fromARGB(255, 184, 184, 184);
  static const Color grey = Colors.grey;
  static const Color lightGrey = Color.fromARGB(255, 223, 223, 223);
  static const Color white = Colors.white;
}
