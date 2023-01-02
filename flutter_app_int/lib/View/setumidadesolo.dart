import 'package:flutter/material.dart';
import 'package:flutter_app_int/View/Recursos/barrasuperiorset.dart';
import 'package:flutter_app_int/database/firestore/service.dart';
import 'package:google_fonts/google_fonts.dart';

class SetUmidadeSolo extends StatefulWidget {
  const SetUmidadeSolo({super.key});

  @override
  State<StatefulWidget> createState() => SetUmidadeSoloState();
}

int varMin = 0;
int varMax = 5;
int varAcionamento = 0;
int varDesligamento = 0;

class SetUmidadeSoloState extends State<SetUmidadeSolo> {
  String configTempoON = '...';
  String configTempoOFF = '...';
  String configUmidMax = '...';
  String configUmidMin = '...';
  int selectIndex = 0;
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

  Text fontePadraoIcones(String texto) {
    return Text(
      texto,
      style: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 0,
              wordSpacing: 1)),
    );
  }

  Color corPadrao() {
    return const Color.fromRGBO(0, 194, 203, 1);
  }

  IconThemeData iconSelect() {
    return const IconThemeData(size: 28, color: Colors.white);
  }

  IconThemeData iconUnSelect() {
    return IconThemeData(size: 18, color: Colors.grey.shade700);
  }

  TextStyle textSelect() {
    return const TextStyle(
        fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white);
  }

  TextStyle textUnSelect() {
    return TextStyle(
        fontWeight: FontWeight.w300, fontSize: 13, color: Colors.grey.shade700);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final appBar = BarraSuperiorSet();
    final appBarHeight =
        appBar.preferredSize.height + MediaQuery.of(context).padding.top;
    int sizeBottom = 30;
    final scaffoldBodyHeight = height - appBarHeight - sizeBottom;

    double sizeIcon = width / 10;
    double sizeVar = width / 7;
    double sizeSplash = width / 10;
    double sizeContainer = width / 5;

    Future<void> config() async {
      final load = await ret();
      setState(() {
        configTempoON = banco.getConfigTempoON();
        configTempoOFF = banco.getConfigTempoOFF();
        configUmidMax = banco.getConfigUmidMax();
        configUmidMin = banco.getConfigUmidMin();
      });
    }

    config();

    Icon bolinhas() {
      return Icon(
        Icons.circle,
        size: width / 130,
        color: Colors.blueGrey.shade200,
      );
    }

    void pressIconMin() {
      //pushDB();
      if (varMin > 0) {
        setState(() {
          varMin = varMin - 5;
          varMax = varMax - 5;
        });
      }
    }

    void pressIconMax() {
      if (varMax < 95) {
        setState(() {
          varMin = varMin + 5;
          varMax = varMax + 5;
        });
      }
    }

    void pressIconMaxAcionamento() {
      if (varAcionamento < 95) {
        setState(() {
          varAcionamento = varAcionamento + 1;
        });
      }
    }

    void pressIconMinAcionamento() {
      if (varAcionamento > 0) {
        setState(() {
          varAcionamento = varAcionamento - 1;
        });
      }
    }

    void pressIconMaxDesligamento() {
      if (varDesligamento < 95) {
        setState(() {
          varDesligamento = varDesligamento + 1;
        });
      }
    }

    void pressIconMinDesligamento() {
      if (varDesligamento > 0) {
        setState(() {
          varDesligamento = varDesligamento - 1;
        });
      }
    }

    List<Widget> listaWidget = <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: pressIconMin,
                alignment: Alignment.center,
                iconSize: sizeIcon,
                splashRadius: sizeSplash,
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.blueGrey.shade200,
                ),
              ),
              SizedBox(
                width: width / 30,
              ),
              fontePadrao(configUmidMin, sizeVar, Colors.blueGrey, 1, 1),
              SizedBox(
                width: width / 40,
              ),
              Column(
                children: [
                  fontePadrao("entre", width / 30, Colors.blueGrey, 0, 0),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left_rounded,
                        size: width / 20,
                        color: Colors.blueGrey.shade200,
                      ),
                      bolinhas(),
                      bolinhas(),
                      bolinhas(),
                      bolinhas(),
                      bolinhas(),
                      bolinhas(),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: width / 20,
                        color: Colors.blueGrey.shade200,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: width / 40,
              ),
              fontePadrao(configUmidMax, sizeVar, Colors.blueGrey, 1, 1),
              SizedBox(
                width: width / 30,
              ),
              IconButton(
                onPressed: pressIconMax,
                alignment: Alignment.center,
                iconSize: sizeIcon,
                splashRadius: sizeSplash,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.blueGrey.shade200,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              fontePadrao("valor em %", width / 30, Colors.blueGrey, 0, 0)
            ],
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: pressIconMinAcionamento,
                alignment: Alignment.center,
                iconSize: sizeIcon,
                splashRadius: sizeSplash,
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.blueGrey.shade200,
                ),
              ),
              SizedBox(
                width: width / 5,
              ),
              fontePadrao(
                  banco.getConfigTempoON(), sizeVar, Colors.blueGrey, 1, 1)

              /*FutureBuilder(
                        future: config(),
                        builder: (BuildContext context,
                            AsyncSnapshot<void> snapshot) {
                          if (snapshot.hasData) {
                            config();
                          } else if (snapshot.hasError) {
                            return Text("Erro DB");
                          }
                          return Center(
                            child: Text(configTempoON),
                          );
                        }),*/
              ,
              SizedBox(
                width: width / 5,
              ),
              IconButton(
                onPressed: pressIconMaxAcionamento,
                alignment: Alignment.center,
                iconSize: sizeIcon,
                splashRadius: sizeSplash,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.blueGrey.shade200,
                ),
              ),
            ],
          ),
          fontePadrao("valor em minutos", width / 30, Colors.blueGrey, 0, 0)
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: pressIconMinDesligamento,
                alignment: Alignment.center,
                iconSize: sizeIcon,
                splashRadius: sizeSplash,
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.blueGrey.shade200,
                ),
              ),
              SizedBox(
                width: width / 5,
              ),
              fontePadrao(configTempoOFF, sizeVar, Colors.blueGrey, 1, 1),
              SizedBox(
                width: width / 5,
              ),
              IconButton(
                onPressed: pressIconMaxDesligamento,
                alignment: Alignment.center,
                iconSize: sizeIcon,
                splashRadius: sizeSplash,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.blueGrey.shade200,
                ),
              ),
            ],
          ),
          fontePadrao("valor em minutos", width / 30, Colors.blueGrey, 0, 0)
        ],
      ),
    ];

    void pressIcon(int index) {
      setState(() {
        selectIndex = index;
      });
    }

    return Scaffold(
      appBar: BarraSuperiorSet(),
      body: Center(child: listaWidget.elementAt(selectIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.water_drop_outlined), label: "Umidade"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_sharp), label: "Acionamento"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_sharp), label: "Desligamento")
        ],
        unselectedIconTheme: iconUnSelect(),
        selectedIconTheme: iconSelect(),
        unselectedLabelStyle: textUnSelect(),
        selectedLabelStyle: textSelect(),
        backgroundColor: corPadrao(),
        currentIndex: selectIndex,
        onTap: pressIcon,
      ),
    );
  }
}
