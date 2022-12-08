import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/estilo.dart';
import 'package:flutter_app_int/View/home.dart';

class BarraSuperior extends AppBar {
  BarraSuperior()
      : super(actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(500),
            child: IconButton(
              onPressed: () {},
              icon: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.asset(
                    "img/logoInt.png",
                    height: 70,
                    width: 70,
                  )),
              iconSize: 40,
            ),
          )
        ]);
}
