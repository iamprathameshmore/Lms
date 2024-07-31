import 'package:flutter/material.dart';

class ThemeDataStyle {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
        //  background Color
        primary: Colors.white,
        primaryFixed: Colors.blueAccent.shade100,
        // Text Color
        secondary: Colors.black,
        secondaryContainer: Colors.grey.shade300),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        primary: Colors.grey.shade900,
        primaryFixed: Colors.blueAccent.shade100,
        secondary: Colors.white,
        secondaryContainer: Colors.grey.shade800),
  );
}
