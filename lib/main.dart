import 'package:flutter/material.dart';
import 'package:spotify/utils/themes/theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,
    );
  }
}
