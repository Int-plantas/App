import 'package:cloud_firestore/cloud_firestore.dart';

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

/*class Dados {
  String n;
  String x;
  Dados({required this.n, required this.x});
  String getn() {
    return n;
  }

  void setn(String a) {
    n = a;
  }

  String getx() {
    return x;
  }

  void setx(String a) {
    x = a;
  }
}*/

class Dados {
  String nome;
  String sobrenome;
  String sUmidadeSolo;
  String sUmidadeAr;
  String sTempSolo;
  String sTempAmbiente;
  String sLuminosidade;
  String estadoSolenoide;
  String configUmidMin;
  String configUmidMax;
  String configTempoON;
  String configTempoOFF;

  Dados(
      {required this.nome,
      required this.sobrenome,
      required this.sUmidadeSolo,
      required this.sUmidadeAr,
      required this.sTempSolo,
      required this.sTempAmbiente,
      required this.configTempoOFF,
      required this.configTempoON,
      required this.configUmidMax,
      required this.configUmidMin,
      required this.estadoSolenoide,
      required this.sLuminosidade});

  void setConfigTempoON(String x) {
    configTempoON = x;
  }

  void setConfigTempoOFF(String x) {
    configTempoOFF = x;
  }

  void setConfigUmidMax(String x) {
    configUmidMax = x;
  }

  void setConfigUmidMin(String x) {
    configUmidMin = x;
  }

  void setsUmidadeSolo(String x) {
    sUmidadeSolo = x;
  }

  void setsUmidadeAr(String x) {
    sUmidadeAr = x;
  }

  void setsTemperaturaSolo(String x) {
    sTempSolo = x;
  }

  void setsTemperaturaAr(String x) {
    sTempAmbiente = x;
  }

  void setsLuminosidade(String x) {
    sLuminosidade = x;
  }

  String getConfigTempoON() {
    return configTempoON;
  }

  String getConfigTempoOFF() {
    return configTempoOFF;
  }

  String getConfigUmidMax() {
    return configUmidMax;
  }

  String getConfigUmidMin() {
    return configUmidMin;
  }

  String getsUmidadeSolo() {
    return sUmidadeSolo;
  }

  String getsUmidadeAr() {
    return sUmidadeAr;
  }

  String getsTemperaturaSolo() {
    return sTempSolo;
  }

  String getsTemperaturaAr() {
    return sTempAmbiente;
  }

  String getsLuminosidade() {
    return sLuminosidade;
  }
}

final banco = Dados(
    nome: '..',
    sobrenome: '..',
    sUmidadeSolo: '..',
    sUmidadeAr: '..',
    sTempSolo: '..',
    sTempAmbiente: '..',
    configTempoOFF: '..',
    configTempoON: '..',
    configUmidMax: '..',
    configUmidMin: '..',
    estadoSolenoide: '..',
    sLuminosidade: '..');

/*class ConectionService extends StatefulWidget {
  @override
  ConectionServiceState createState() => ConectionServiceState();
}*/

/*class ConectionService extends StatefulWidget {

  Future<String> ret() async {
  /* DatabaseReference starCountRef =
      FirebaseDatabase.instance.ref('3/teste/nome');
  String f = 'j';
  var result;

  String updateStarCount(String x) {
    f = x;
    return f;
  }

  starCountRef.onValue.listen((DatabaseEvent event) {
    // Imprime um doc especifico
    final data = event.snapshot.value;
    var a = data;
    a.toString();
    result = data.toString();
    updateStarCount('te');
    print(data);
    print(f);
  });
//  print(f);
  return f;*/

  await Firebase.initializeApp();
  var collection = FirebaseFirestore.instance.collection('1');

  // Chama nossa colecao uma unica vez
  var result = await collection.get();

  // Observa se ha alteracao na colecao, se houver executa o metodo
  collection.snapshots().listen((r) {
    result = r;
    // Imprime um doc especifico
    print(r.docs[0]['nome']);
    d.setn(r.docs[0]['nome']);
  
  
  });

  return 's';
}
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
    
  } }*/
Future<void> ret() async {
  var collection = FirebaseFirestore.instance.collection('1');

  // Chama nossa colecao uma unica vez
  var result = await collection.get();

  // Observa se ha alteracao na colecao, se houver executa o metodo
  collection.snapshots().listen((r) {
    result = r;
    banco.setConfigTempoON(r.docs[0]['configTempoON']);
    banco.setConfigTempoOFF(r.docs[0]['configTempoOFF']);
    banco.setConfigUmidMax(r.docs[0]['configUmidMax']);
    banco.setConfigUmidMin(r.docs[0]['configUmidMin']);
    banco.setsUmidadeSolo(r.docs[0]['sUmidadeSolo']);
    banco.setsUmidadeAr(r.docs[0]['sUmidadeAr']);
    banco.setsTemperaturaAr(r.docs[0]['sTemperaturaAr']);
    banco.setsTemperaturaSolo(r.docs[0]['sTemperaturaSolo']);
    banco.setsLuminosidade(r.docs[0]['sLuminosidade']);
  });
}

/*Future<void> push() async {
  var collection = FirebaseFirestore.instance.collection('1');
  collection
      .doc('User')
      .update({'configUmidMin': '1'})
      .then((value) => print('deu certo'))
      .catchError((error) => print('erro$error'));
}*/

/*Future<String> ret() async {
  /* DatabaseReference starCountRef =
      FirebaseDatabase.instance.ref('3/teste/nome');
  String f = 'j';
  var result;

  String updateStarCount(String x) {
    f = x;
    return f;
  }

  starCountRef.onValue.listen((DatabaseEvent event) {
    // Imprime um doc especifico
    final data = event.snapshot.value;
    var a = data;
    a.toString();
    result = data.toString();
    updateStarCount('te');
    print(data);
    print(f);
  });
//  print(f);
  return f;*/

  await Firebase.initializeApp();
  var collection = FirebaseFirestore.instance.collection('1');

  // Chama nossa colecao uma unica vez
  var result = await collection.get();
  var x = 'd';

  // Observa se ha alteracao na colecao, se houver executa o metodo
  collection.snapshots().listen((r) {
    result = r;
    // Imprime um doc especifico
    print(r.docs[0]['nome']);
    d.setn(r.docs[0]['nome']);
    x = r.docs[0]['nome'];
  });

  return x;
}*/

/*class ConectionServiceState extends State<ConectionService> {
  DatabaseReference starCountRef =
      FirebaseDatabase.instance.ref('3/teste/nome');

  @override
  Widget build(BuildContext context) {
    starCountRef.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      print(data);
    });
    // TODO: implement build
    return Text(" ");
  }
}*/

/*abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);
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