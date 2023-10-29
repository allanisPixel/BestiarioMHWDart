import 'package:flutter/material.dart';
import 'Components/common_buttons/simple_button.dart';

void main() {
  runApp(MeuApp1());
}

class MeuApp1 extends StatelessWidget {
  Widget build(BuildContext bc) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFE9D6B5),
            foregroundColor: Colors.black,
            title: const Text("Bem vindo Caçador"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    child: Text('Monstros Grandes'),
                    color: Color.fromARGB(255, 20, 200, 20),
                    padding: EdgeInsets.all(20.0),
                  ),
                ]),
                Row(children: <Widget>[
                  Container(
                    child: Text('Vida Nativa'),
                    color: Color.fromARGB(255, 20, 200, 20),
                    padding: EdgeInsets.all(20.0),
                  ),
                ]),
                Row(children: <Widget>[
                  Container(
                    child: Text('Adornos'),
                    color: Color.fromARGB(255, 20, 200, 20),
                    padding: EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: Text('Mapa'),
                    color: Color.fromARGB(255, 20, 200, 20),
                    padding: EdgeInsets.all(20.0),
                  ),
                ]),
                Row(children: <Widget>[
                  Container(
                    child: Text('Itens'),
                    color: Color.fromARGB(255, 20, 200, 20),
                    padding: EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: Text('Eventos'),
                    color: Color.fromARGB(255, 20, 200, 20),
                    padding: EdgeInsets.all(20.0),
                  ),
                ]),
              ],
            ),
          )),
    );
  }
}
