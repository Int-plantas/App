import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuHamburger extends StatelessWidget {
  // Atributos (devem vir do banco)
  final String id = "55425";
  final String nome = "Tony";
  final String sobrenome = "Stark";
  final String foto = "assets/img/stark.jpeg";

  const MenuHamburger({super.key});

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

  Divider divisorPadrao() {
    return const Divider(height: 0, thickness: 1, indent: 5, endIndent: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: 140,
            padding: const EdgeInsets.all(10),
            color: const Color.fromRGBO(0, 194, 203, 1),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 80,
                      width: 150,
                      child: fontePadrao(
                          "Olá, Sr. $sobrenome", 18, Colors.white, 1, 3),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 40,
                      width: 150,
                      child: fontePadrao("ID: $id", 12, Colors.white, 1, 3),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          foto,
                          height: 110,
                          width: 110,
                        ))
                  ],
                )
              ],
            ),
          ),
          ListTile(
            title:
                fontePadrao("Umidade do solo", 15, Colors.grey.shade800, 0, 3),
            leading: const Icon(
              Icons.water_drop_sharp,
              color: Color.fromRGBO(9, 117, 155, 1),
              size: 22,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey.shade800,
              size: 14,
            ),
            onTap: () {},
          ),
          divisorPadrao(),
          ListTile(
            title: fontePadrao("Umidade do ar", 15, Colors.grey.shade800, 0, 3),
            leading: const Icon(
              Icons.water_drop_sharp,
              color: Color.fromRGBO(9, 117, 155, 1),
              size: 22,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey.shade800,
              size: 14,
            ),
            onTap: () {},
          ),
          divisorPadrao(),
          ListTile(
            title: fontePadrao(
                "Temperatura do solo", 15, Colors.grey.shade800, 0, 3),
            leading: const Icon(
              Icons.thermostat_sharp,
              color: Color.fromRGBO(77, 171, 199, 1),
              size: 22,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey.shade800,
              size: 14,
            ),
            onTap: () {},
          ),
          divisorPadrao(),
          ListTile(
            title: fontePadrao(
                "Temperatura ambiente", 15, Colors.grey.shade800, 0, 3),
            leading: const Icon(
              Icons.thermostat_sharp,
              color: Color.fromRGBO(77, 171, 199, 1),
              size: 22,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey.shade800,
              size: 14,
            ),
            onTap: () {},
          ),
          divisorPadrao(),
          ListTile(
            title: fontePadrao("Luminosidade", 15, Colors.grey.shade800, 0, 3),
            leading: Icon(
              Icons.wb_sunny_sharp,
              color: Colors.amber.shade400,
              size: 22,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey.shade800,
              size: 14,
            ),
            onTap: () {},
          ),
          divisorPadrao(),
          ListTile(
            title: fontePadrao("Configurações", 15, Colors.grey.shade800, 0, 3),
            leading: Icon(
              Icons.settings,
              color: Colors.grey.shade800,
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
