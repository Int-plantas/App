import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/barraSuperior.dart';
import 'package:flutter_app_int/View/Recursos/menuHamburger.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final appBar = BarraSuperior();
    final appBarHeight =
        appBar.preferredSize.height + MediaQuery.of(context).padding.top;
    final ScaffoldBodyHeight = height - appBarHeight;

    Container horizontalDivider() {
      return Container(
        padding: EdgeInsets.all(0),
        height: 0,
        width: (width / 2) - 1,
        child: Divider(
          height: 0,
          thickness: 0,
          indent: 5,
          endIndent: 5,
        ),
      );
    }

    Container verticalDivider() {
      return Container(
        padding: EdgeInsets.all(0),
        height: ScaffoldBodyHeight / 3,
        width: 1,
        child: VerticalDivider(
          width: 1,
          thickness: 1,
          indent: 5,
          endIndent: 5,
        ),
      );
    }

    return Scaffold(
      appBar: appBar,
      drawer: MenuHamburger(),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                //padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
                onPressed: () {},
                child: Text("Solo\nkk"),
                //iconSize: 30,
                style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.fromLTRB(60, 10, 60, 10)),
              ),
              horizontalDivider(),
              IconButton(
                onPressed: () {},
                icon: Text("Ar"),
                iconSize: 30,
              ),
              horizontalDivider(),
              IconButton(
                onPressed: () {},
                icon: Text("Solo"),
                iconSize: 30,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [verticalDivider(), verticalDivider(), verticalDivider()],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Text("Ar"),
                iconSize: 30,
              ),
              horizontalDivider(),
              IconButton(
                onPressed: () {},
                icon: Text("Ar"),
                iconSize: 30,
              ),
              horizontalDivider(),
              IconButton(
                onPressed: () {},
                icon: Text("Ar"),
                iconSize: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
