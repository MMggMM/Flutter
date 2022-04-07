import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  TextEditingController n3Controller = TextEditingController();

  String infoResultado = "Informe o número!";

  void _calcularSoma() {
    setState(() {
      int numero = new Random().nextInt(11);
      int n1 = int.parse(n1Controller.text);

      if (n1 == numero)
        infoResultado = 'Acertou!!!!!';
      else
        infoResultado = 'Errou, o número era $numero';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Color.fromARGB(255, 100, 83, 83),
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Jogo do Nº Aleatório"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.network(
            'https://static.wikia.nocookie.net/batman/images/3/32/Charada.png/revision/latest?cb=20150430140527&path-prefix=pt-br',
            height: 160,
            width: 160,
          ),
          _campo("Pense em um nº de 0 a 10", n1Controller),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularSoma,
          child: Text("Descobrir",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.green,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Color.fromARGB(255, 20, 8, 8), fontSize: 25.0),
    );
  }
}
