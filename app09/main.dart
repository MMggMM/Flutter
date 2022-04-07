import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }
 
  _titulo() {
    return AppBar(
      title: Text("Vagas"),
      centerTitle: true,
      backgroundColor: Colors.red,
    );
  }
 
  _corpo() {
    return Container(
      child: ListView(
        children: <Widget>[
         _vaga('Analista de requisitos', 10000, 'Lorem isum qualquer', '13 3425-9963'),
         _vaga('Analista de requisitos', 10000, 'Lorem isum qualquer', '13 3425-9963'),
         _vaga('Analista de requisitos', 10000, 'Lorem isum qualquer', '13 3425-9963'),
         _vaga('Analista de requisitos', 10000, 'Lorem isum qualquer', '13 3425-9963'),
         _vaga('Analista de requisitos', 10000, 'Lorem isum qualquer', '13 3425-9963'),
         _vaga('Analista de requisitos', 10000, 'Lorem isum qualquer', '13 3425-9963'),
         _vaga('Analista de requisitos', 10000, 'Lorem isum qualquer', '13 3425-9963'),
        ],
      ),
    );
  }
  
  _vaga(String job, double salario, String desc, String contato){
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      color: Colors.grey,
      child: Column(children: <Widget>[
        Text('$job'),
        Text('Salário: R\$ $salario'),
        Text('Descrição: $desc'),
        Text('Contato: $contato'),
      ],)
    );
  }

  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 300,
      width: 300,
      //fit: BoxFit.fill,
      //fit: BoxFit.contain,
      //fit: BoxFit.cover,
    );
  }
}
