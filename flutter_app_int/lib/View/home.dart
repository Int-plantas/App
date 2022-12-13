import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/barraSuperior.dart';
import 'package:flutter_app_int/View/Recursos/menuHamburger.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

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
    int sizeBottom = 30;
    final scaffoldBodyHeight = height - appBarHeight - sizeBottom;

    Container horizontalDivider() {
      return Container(
        padding: const EdgeInsets.all(0),
        height: 0,
        width: (width / 2) - 1,
        child: const Divider(
          color: Colors.grey,
          height: 0,
          thickness: 1,
          indent: 7,
          endIndent: 7,
        ),
      );
    }

    Container verticalDivider() {
      return Container(
        padding: const EdgeInsets.all(0),
        height: scaffoldBodyHeight / 3,
        width: 1,
        child: const VerticalDivider(
          color: Colors.grey,
          width: 0,
          thickness: 1,
          indent: 7,
          endIndent: 7,
        ),
      );
    }

    EdgeInsets squareButton() {
      return EdgeInsets.fromLTRB(width / 9, scaffoldBodyHeight / 9, width / 9,
          scaffoldBodyHeight / 12);
    }

    SizedBox spaceButton() {
      return SizedBox(height: 28.8);
    }

    return Scaffold(
        appBar: appBar,
        drawer: const MenuHamburger(),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                          foregroundColor: Colors.black,
                          padding: squareButton()),
                      child: Column(children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.water_drop_outlined,
                              size: 26,
                              color: Color.fromRGBO(9, 117, 155, 1),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            fontePadrao("53%", 28, Colors.black, 1, 1)
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        fontePadrao("Solo", 22, Colors.black, 1, 1)
                      ])),
                  horizontalDivider(),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                          foregroundColor: Colors.black,
                          padding: squareButton()),
                      child: Column(children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.thermostat,
                              size: 26,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            fontePadrao("53°C", 28, Colors.black, 1, 1)
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        fontePadrao("Solo", 22, Colors.black, 1, 1)
                      ])),
                  horizontalDivider(),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                          foregroundColor: Colors.black,
                          padding: squareButton()),
                      child: Column(children: [
                        Row(
                          children: [
                            Icon(
                              Icons.light_mode_outlined,
                              size: 26,
                              color: Colors.amber.shade900,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            fontePadrao("03:00h", 28, Colors.black, 1, 1)
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        fontePadrao("Horas luz", 22, Colors.black, 1, 1)
                      ])),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  verticalDivider(),
                  verticalDivider(),
                  verticalDivider()
                ],
              ),
              Column(
                children: [
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                          foregroundColor: Colors.black,
                          padding: squareButton()),
                      child: Column(children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.water_drop_outlined,
                              size: 26,
                              color: Color.fromRGBO(9, 117, 155, 1),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            fontePadrao("40%", 28, Colors.black, 1, 1)
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        fontePadrao("Ar", 22, Colors.black, 1, 1)
                      ])),
                  horizontalDivider(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                        foregroundColor: Colors.black,
                        padding: squareButton()),
                    child: Column(children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.thermostat,
                            size: 26,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          fontePadrao("40°C", 28, Colors.black, 1, 1)
                        ],
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      fontePadrao("Ar", 22, Colors.black, 1, 1)
                    ]),
                  ),
                  horizontalDivider(),
                  spaceButton(),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                          foregroundColor: Colors.black,
                          side: const BorderSide(color: Colors.grey, width: 3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          padding: EdgeInsets.symmetric(
                              vertical: scaffoldBodyHeight / 60,
                              horizontal: width / 15)),
                      child: fontePadrao("Auto", 20,
                          const Color.fromRGBO(9, 117, 155, 1), 1, 1)),
                  spaceButton(),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          //textStyle: const TextStyle(fontSize: 20),
                          foregroundColor: Colors.black,
                          side: const BorderSide(color: Colors.grey, width: 3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          padding: EdgeInsets.symmetric(
                              vertical: scaffoldBodyHeight / 60,
                              horizontal: width / 15)),
                      child: fontePadrao("ON", 20, Colors.black, 0, 0)),
                  spaceButton(),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          //textStyle: const TextStyle(fontSize: 20),
                          foregroundColor: Colors.black,
                          side: const BorderSide(color: Colors.grey, width: 3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          padding: EdgeInsets.symmetric(
                              vertical: scaffoldBodyHeight / 60,
                              horizontal: width / 15)),
                      child: fontePadrao("OFF", 20, Colors.black, 0, 0)),
                  spaceButton(),
                ],
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                fontePadrao("www.intplantas.com", 14, Colors.black, 0, 1),
              ],
            )
          ])
        ])
        /*bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "dede"),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: "ww")
      ]),*/
        );
  }
}
