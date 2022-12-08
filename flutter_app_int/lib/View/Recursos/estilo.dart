import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/home.dart';

ThemeData estilo() {
  ThemeData temaBranco = ThemeData.fallback();

  return temaBranco.copyWith(
      primaryColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          primary: Colors.white,
          onPrimary: Colors.grey),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Colors.pink,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.purple,
        hoverColor: Colors.purple,
      ));
}
/*
ThemeData estiloDark() {
  ThemeData temaDark = ThemeData.dark();

  return temaDark.copyWith(
      primaryColor: Colors.white,
      colorScheme:
          ColorScheme.fromSeed(seedColor: Colors.white, primary: Colors.blue),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Colors.pink,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.purple,
        hoverColor: Colors.purple,
      ));
}
*/