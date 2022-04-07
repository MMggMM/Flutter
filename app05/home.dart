import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  TextEditingController n3Controller = TextEditingController();

  String infoResultado = "Informe o peso e altura";

  void _calcularSoma() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 / (n2 * n2);

      if (resultado < 18.5)
        infoResultado = 'Abaixo do Peso';
      else if (resultado < 25)
        infoResultado = 'Peso Normal';
      else if (resultado < 30)
        infoResultado = 'Sobrepeso';
      else if (resultado < 35)
        infoResultado = 'Obesidade Grau I';
      else if (resultado < 40)
        infoResultado = 'Obesidade Grau II';
      else
        infoResultado = 'Obesidade Grau III ou Mórbida';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Color.fromARGB(255, 236, 89, 89),
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Cálculo do IMC"),
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
            'https://static.wikia.nocookie.net/ursossemcurso/images/e/ed/JIsLWgr.png/revision/latest?cb=20150730025023&path-prefix=pt-br',
            height: 160,
            width: 160,
          ),
          _campo("Peso", n1Controller),
          _campo("Altura", n2Controller),
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
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Color.fromARGB(255, 71, 37, 36), fontSize: 25.0),
    );
  }
}
