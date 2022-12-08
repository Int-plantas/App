import 'package:flutter/material.dart';

class MenuHamburger extends StatelessWidget {
  // Atributos (devem vir do banco)
  final String id = "55425";
  final String nome = "Tony";
  final String sobrenome = "Stark";
  final String email = "tony@stark.com";
  final String foto = "img/stark.jpeg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Row(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
                height: 150,
                color: Colors.green.shade900)
          ],
        ),
        Row(
          children: [
            ListView(
              children: [
                ListTile(
                  title: Text("Umidade do solo"),
                  leading: Icon(Icons.water_drop),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {},
                ),
              ],
            ),
          ],
        )
      ],
    ));
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
