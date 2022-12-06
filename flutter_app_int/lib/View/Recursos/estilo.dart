import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.fallback();

  return base.copyWith(
      primaryColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.pink),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.purple,
        hoverColor: Colors.purple,
      ));
}
