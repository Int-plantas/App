import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/barraSuperior.dart';
import 'package:flutter_app_int/View/setumidadesolo.dart';
import 'package:flutter_app_int/database/firestore/service.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Recursos/menuHamburger.dart';

class Home extends StatefulWidget {
  Home({super.key});

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

  bool stateButton1 = true;
  bool stateButton2 = false;
  bool stateButton3 = false;

  //final refresh = serviceDados();
  final Future<String> a = getUmidade();

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
      return const SizedBox(height: 18.8);
    }

    Size sizeButton() {
      return Size(width / 3, scaffoldBodyHeight / 14);
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
                  Builder(builder: (BuildContext context) {
                    return TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SetUmidadeSolo()));
                        },
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                            foregroundColor: Colors.black,
                            padding: squareButton()),
                        child: Column(children: [
                          Container(
                            child: FutureBuilder(
                                future: getUmidade(),
                                builder: (context, snapshot) {
                                  return Text(snapshot.data.toString());
                                }),
                          ),
                          /*Row(children: [
                            const Icon(
                              Icons.water_drop_outlined,
                              size: 26,
                              color: Color.fromRGBO(9, 117, 155, 1),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            FutureBuilder<String>(
                                future: a,
                                builder: (BuildContext context,
                                    AsyncSnapshot<String> snapshot) {
                                  List<Widget> children;
                                  if (snapshot.hasData) {
                                    children = <Widget>[
                                      const Icon(
                                        Icons.check_circle_outline,
                                        color: Colors.green,
                                        size: 60,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 16),
                                        child: Text('Result: ${snapshot.data}'),
                                      ),
                                    ];
                                  } else if (snapshot.hasError) {
                                    children = <Widget>[
                                      const Icon(
                                        Icons.error_outline,
                                        color: Colors.red,
                                        size: 60,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 16),
                                        child: Text('Error: ${snapshot.error}'),
                                      ),
                                    ];
                                  } else {
                                    children = const <Widget>[
                                      SizedBox(
                                        width: 60,
                                        height: 60,
                                        child: CircularProgressIndicator(),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 16),
                                        child: Text('Awaiting result...'),
                                      ),
                                    ];
                                  }
                                  return Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: children,
                                    ),
                                  );
                                })
                          ]),*/

                          /* Container(
                            child: FutureBuilder<String>(
                              future:
                                  a, // a previously-obtained Future<String> or null
                              builder: (BuildContext context,
                                  AsyncSnapshot<String> snapshot) {
                                List<Widget> children;
                                if (snapshot.hasData) {
                                  children = <Widget>[
                                    const Icon(
                                      Icons.check_circle_outline,
                                      color: Colors.green,
                                      size: 60,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16),
                                      child: Text('Result: ${snapshot.data}'),
                                    ),
                                  ];
                                } else if (snapshot.hasError) {
                                  children = <Widget>[
                                    const Icon(
                                      Icons.error_outline,
                                      color: Colors.red,
                                      size: 60,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16),
                                      child: Text('Error: ${snapshot.error}'),
                                    ),
                                  ];
                                } else {
                                  children = const <Widget>[
                                    SizedBox(
                                      width: 60,
                                      height: 60,
                                      child: CircularProgressIndicator(),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 16),
                                      child: Text('Awaiting result...'),
                                    ),
                                  ];
                                }
                                return Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: children,
                                  ),
                                );
                              },
                            ),
                          ),*/
                          const SizedBox(
                            height: 36,
                          ),
                          fontePadrao("Solo", 22, Colors.black, 1, 1)
                        ]));
                  }),
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
                  ElevatedButton(
                      onPressed: pressButon1,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:
                            stateButton1 ? Colors.grey.shade300 : Colors.white,
                        side: const BorderSide(color: Colors.grey, width: 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        fixedSize: sizeButton(),
                      ),
                      child: fontePadrao("Auto", 20,
                          const Color.fromRGBO(9, 117, 155, 1), 1, 1)),
                  spaceButton(),
                  ElevatedButton(
                      onPressed: pressButton2,
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: stateButton2
                              ? Colors.grey.shade300
                              : Colors.white,
                          side: const BorderSide(color: Colors.grey, width: 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          fixedSize: sizeButton()),
                      child: fontePadrao("ON", 20, Colors.black, 0, 0)),
                  spaceButton(),
                  ElevatedButton(
                      onPressed: pressButton3,
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: stateButton3
                              ? Colors.grey.shade300
                              : Colors.white,
                          side: const BorderSide(color: Colors.grey, width: 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          fixedSize: sizeButton()),
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
        ]));
  }

  pressButon1() {
    setState(() {
      stateButton1 = true;
      stateButton2 = false;
      stateButton3 = false;
    });
  }

  pressButton2() {
    setState(() {
      stateButton1 = false;
      stateButton2 = true;
      stateButton3 = false;
    });
  }

  pressButton3() {
    setState(() {
      stateButton1 = false;
      stateButton2 = false;
      stateButton3 = true;
    });
  }
}
