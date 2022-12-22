import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/estilo.dart';
import 'package:flutter_app_int/View/home.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  static const HOME = '/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Int plantas",
      debugShowCheckedModeBanner: false,
      theme: estilo(),
      routes: {
        HOME: (context) => Home(),
      },
    );
  }
}
