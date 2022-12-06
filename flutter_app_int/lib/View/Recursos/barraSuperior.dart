import 'package:flutter/material.dart';

class BarraSuperior extends AppBar {
  BarraSuperior()
      : super(
          actions: [
            /*Builder(builder: (BuildContext context) {
              return IconButton(onPressed: () {}, icon: Icon(Icons.abc));
            })*/
            IconButton(
              onPressed: () {},
              icon: Image.asset("img/logoInt.png"),
              iconSize: 50,
            ),
          ],
        );
}
