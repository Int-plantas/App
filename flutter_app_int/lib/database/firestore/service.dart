import 'package:cloud_firestore/cloud_firestore.dart';

late String nome;
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

Future<String> getUmidade() async {
  DocumentSnapshot document =
      await FirebaseFirestore.instance.collection('User').doc('11111').get();

  return document['nome'];
}


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