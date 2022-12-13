import 'package:flutter/material.dart';

class BarraSuperior extends AppBar {
  BarraSuperior({super.key})
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
