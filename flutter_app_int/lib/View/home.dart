import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/barraSuperior.dart';
import 'package:flutter_app_int/View/Recursos/menuHamburger.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  Text fontePadrao(String texto, double tamanho, Color cor,
      double espacamentoLetras, double espacamentoPalavras) {
    return Text(
      texto,
      style: GoogleFonts.nunito(
          textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: tamanho,
              color: cor,
              letterSpacing: espacamentoLetras,
              wordSpacing: espacamentoPalavras)),
    );
  }

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
          width: 0,
          thickness: 0,
          indent: 5,
          endIndent: 5,
        ),
      );
    }

    EdgeInsets squareButton() {
      return EdgeInsets.fromLTRB(width / 9, ScaffoldBodyHeight / 6.9, width / 9,
          ScaffoldBodyHeight / 17);
    }

    return Scaffold(
      appBar: appBar,
      drawer: MenuHamburger(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Column(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.water_drop_outlined,
                          size: 26,
                          color: Color.fromRGBO(9, 117, 155, 1),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        fontePadrao("53%", 28, Colors.black, 1, 1)
                      ],
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    fontePadrao("Solo", 22, Colors.black, 1, 1)
                  ]),
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      foregroundColor: Colors.black,
                      padding: squareButton())),
              horizontalDivider(),
              TextButton(
                  onPressed: () {},
                  child: Column(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.thermostat,
                          size: 26,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        fontePadrao("53°C", 28, Colors.black, 1, 1)
                      ],
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    fontePadrao("Solo", 22, Colors.black, 1, 1)
                  ]),
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      foregroundColor: Colors.black,
                      padding: squareButton())),
              horizontalDivider(),
              TextButton(
                  onPressed: () {},
                  child: Column(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.light_mode_outlined,
                          size: 26,
                          color: Colors.amber.shade900,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        fontePadrao("03:00h", 28, Colors.black, 1, 1)
                      ],
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    fontePadrao("Horas luz", 22, Colors.black, 1, 1)
                  ]),
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      foregroundColor: Colors.black,
                      padding: squareButton())),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [verticalDivider(), verticalDivider(), verticalDivider()],
          ),
          Column(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Column(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.water_drop_outlined,
                          size: 26,
                          color: Color.fromRGBO(9, 117, 155, 1),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        fontePadrao("40%", 28, Colors.black, 1, 1)
                      ],
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    fontePadrao("Ar", 22, Colors.black, 1, 1)
                  ]),
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      foregroundColor: Colors.black,
                      padding: squareButton())),
              horizontalDivider(),
              TextButton(
                onPressed: () {},
                child: Column(children: [
                  Row(
                    children: [
                      Icon(
                        Icons.thermostat,
                        size: 26,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      fontePadrao("40°C", 28, Colors.black, 1, 1)
                    ],
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  fontePadrao("Ar", 22, Colors.black, 1, 1)
                ]),
                style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    foregroundColor: Colors.black,
                    padding: squareButton()),
              ),
              horizontalDivider(),
              TextButton(
                  onPressed: () {},
                  child: Text(" \n "),
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.fromLTRB(
                          (width / 5),
                          (ScaffoldBodyHeight / 7.85),
                          (width / 5),
                          (ScaffoldBodyHeight / 7.85)))),
            ],
          ),
        ],
      ),
    );
  }
}
