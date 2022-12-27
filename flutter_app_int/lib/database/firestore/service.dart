import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//String sUmidadeSolo;

/*void serviceDados() async {
  final collection = FirebaseFirestore.instance.collection('User');
  var result = await collection.get();

  collection.snapshots().listen((r) {
    result = r;
    nome = r.docs[0]['nome'];
    sUmidadeSolo = r.docs[0]['sUmidadeSolo'];
    print(sUmidadeSolo);
  });
}*/

/*Future<List> getUmidade() async {
  final collection = FirebaseFirestore.instance.collection('User');
  var result = await collection.get();
  String sUmidadeSolo;

  collection.snapshots().listen((r) {
    result = r;
    nome = r.docs[0]['nome'];
    sUmidadeSolo = r.docs[0]['sUmidadeSolo'];
  });
  return ;
}*/

/*Future<String> getUmidade() async {
  /*DocumentSnapshot document =
      await FirebaseFirestore.instance.collection('User').doc('11111').get();*/

      final collection = FirebaseFirestore.instance.collection('User');

      DocumentSnapshot document =  

  return document['nome'];
}*/

class ConectionService extends StatefulWidget {
  String idDataBase;
  double sizeFont;
  Color colorVar;
  ConectionService(
      {required this.idDataBase,
      required this.sizeFont,
      required this.colorVar}) {}
  @override
  _ConectionServiceState createState() => _ConectionServiceState(
      idDataBase: idDataBase, sizeFont: sizeFont, colorVar: colorVar);
}

class _ConectionServiceState extends State<ConectionService> {
  String idDataBase;
  double sizeFont;
  Color colorVar;
  _ConectionServiceState(
      {required this.idDataBase,
      required this.sizeFont,
      required this.colorVar});
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('1').snapshots();

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
    return StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('X');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("...");
          }

          return ListView(
              children: snapshot.data!.docs.map(
            (DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return fontePadrao(data[idDataBase], sizeFont, colorVar, 1, 1);
            },
          ).toList());
        });
  }
}

/*abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);
}*/


/*class Dados {
  dynamic id;
  String user;
  int sUmidadeSolo;
  int sUmidadeAr;
  int sTempSolo;
  int sTempAmbiente;
  bool estadoSolenoide;
  int umidadeDesejadaMin;
  int umidadeDesejadaMax;
  int tempoAcionamento;
  int tempoDesligamento;

  Dados(
      {required this.id,
      required this.user,
      required this.sUmidadeSolo,
      required this.sUmidadeAr,
      required this.sTempSolo,
      required this.sTempAmbiente,
      required this.tempoAcionamento,
      required this.tempoDesligamento,
      required this.umidadeDesejadaMin,
      required this.umidadeDesejadaMax,
      required this.estadoSolenoide});
}*/

 /*await Firebase.initializeApp();
  var collection = FirebaseFirestore.instance.collection('User');

  // Chama nossa colecao uma unica vez
  var result = await collection.get();

  // Observa se ha alteracao na colecao, se houver executa o metodo
  collection.snapshots().listen((r) {
    result = r;
    // Imprime um doc especifico
    print(r.docs[0]['nome']);
  });

  // For para chamar resultado
  /*for (var doc in result.docs) {
    print(doc['nome']);
  }*/

  // Metodo para adicionar algo na colecao do banco
  /*collection
      .doc('11111')
      .update({'nome': 'Tony', 'sobrenome': 'Stark'})
      .then((value) => print('deu certo'))
      .catchError((error) => print('erro$error'));*/*/