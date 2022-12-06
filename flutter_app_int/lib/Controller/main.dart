import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/estilo.dart';
import 'package:flutter_app_int/View/home.dart';

void main() => runApp(MaterialApp(
      title: "Int plantas",
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: estilo(),
    ));
