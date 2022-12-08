import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuHamburger extends StatelessWidget {
  // Atributos (devem vir do banco)
  final String id = "55425";
  final String nome = "Tony";
  final String sobrenome = "Stark";
  final String email = "tony@stark.com";
  final String foto = "img/stark.jpeg";

  Text fontePadrao(String texto, double tamanho, Color cor,
      double espacamentoLetras, double espacamentoPalavras) {
    return Text(
      texto,
      style: GoogleFonts.nunito(
          textStyle: TextStyle(
              fontSize: tamanho,
              color: cor,
              letterSpacing: espacamentoLetras,
              wordSpacing: espacamentoPalavras)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  border: Border.all(color: Colors.green.shade900, width: 0)),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 30,
              child: Row(children: [
                fontePadrao("Olá Sr. ${sobrenome}", 18, Colors.white, 1, 3)
              ])),
          Container(
              decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  border: Border.all(color: Colors.green.shade900, width: 0)),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
              height: 110,
              child: Row(children: [
                Column(
                  children: [
                    SizedBox(height: 85),
                    fontePadrao("ID: ${id}", 12, Colors.grey, 1, 3)
                  ],
                ),
                SizedBox(
                  width: 109,
                ),
                Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "img/stark.jpeg",
                          height: 100,
                          width: 100,
                        ))
                  ],
                ),
              ])),
          ListTile(
            title:
                fontePadrao("Umidade do solo", 15, Colors.grey.shade800, 0, 3),
            leading: Icon(
              Icons.water_drop_sharp,
              color: Colors.blue.shade700,
              size: 22,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey.shade800,
              size: 14,
            ),
            onTap: () {},
          ),
          ListTile(
            title: fontePadrao("Umidade do ar", 15, Colors.grey.shade800, 0, 3),
            leading: Icon(
              Icons.water_drop_sharp,
              color: Colors.blue.shade700,
              size: 22,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey.shade800,
              size: 14,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

/*
          Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
            height: 150,
            color: Colors.green.shade900,
            child: Column(
                children: [
                  Column(children: [
                    Row(
                      children: [
                        Text(
                          "Olá, Sr. ${sobrenome}!",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                              letterSpacing: 1,
                              wordSpacing: 3,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 65),
                    Row(
                      children: [
                        Text(
                          "ID: ${id}",
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          email,
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 14),
                        ),
                      ],
                    ),
                  ]),
                  Column(
                    children: [
                      Text("dd"),
                    ],
                  ),
                ]),
          ),
          //Dados usuario
          UserAccountsDrawerHeader(
            accountName: Text("Olá Sr. ${sobrenome}"),
            accountEmail: Text(email),
            decoration: BoxDecoration(color: Colors.green.shade900),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(foto),
              ),
            ),
          ),*/
//Umidade do solo

//Umidade do ar
//Temperatura do solo
//Temperatura ambiente
//Luminosidade
