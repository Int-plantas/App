import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/estilo.dart';
import 'package:flutter_app_int/View/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Int plantas",
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: estilo(),
    );
  }
}
