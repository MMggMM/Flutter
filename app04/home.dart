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

  String infoResultado = "Informe os números!";

  void _calcularSoma() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 / n2;

      if (resultado <= 0.7)
        infoResultado = 'Melhor opção: Etanol';
      else
        infoResultado = 'Melhor opção: Gasolina';
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
      title: Text("Álcool ou Gasolina"),
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
            'https://i.pinimg.com/736x/ea/a4/4f/eaa44f8eed723134bf37bef80768d547.jpg',
            height: 160,
            width: 160,
          ),
          _campo("Preço do Etanol", n1Controller),
          _campo("Preço da Gasolina", n2Controller),
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
