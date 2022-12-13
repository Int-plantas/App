import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData temaBranco = ThemeData.fallback();

  return temaBranco.copyWith(
      primaryColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          primary: Colors.white,
          onPrimary: Colors.grey),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.pink,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.purple,
        hoverColor: Colors.purple,
      ));
}
