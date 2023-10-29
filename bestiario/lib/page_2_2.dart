import 'package:flutter/material.dart';
import 'Components/common_buttons/simple_button.dart';

void main() {
  runApp(MeuApp1());
}

class MeuApp1 extends StatelessWidget {
  Widget build(BuildContext bc) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(236, 229, 204, 1),
      ),
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
                  const SimpleButton(texto: 'Monstros Grandes'),
                ]),
                Row(children: <Widget>[
                  const SimpleButton(texto: 'Vida Nativa'),
                ]),
                Row(children: <Widget>[
                  const SimpleButton(texto: 'Adornos'),
                  const SimpleButton(texto: 'Mapa'),
                ]),
                Row(children: <Widget>[
                  const SimpleButton(texto: 'Itens'),
                  const SimpleButton(texto: 'Eventos'),
                ]),
              ],
            ),
          )),
    );
  }
}
