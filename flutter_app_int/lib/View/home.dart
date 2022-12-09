import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/barraSuperior.dart';
import 'package:flutter_app_int/View/Recursos/estilo.dart';
import 'package:flutter_app_int/View/Recursos/menuHamburger.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: MenuHamburger(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Text("Solo"),
            iconSize: 30,
          ),
          VerticalDivider(
            width: 1,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: Text("Ar"),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
