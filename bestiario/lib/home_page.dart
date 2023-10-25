import 'package:flutter/material.dart';

class MeuApp3 extends StatelessWidget {
  const MeuApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyanAccent,
            leading: Image(
              image: AssetImage('assets/images/g_j_min'),
            ),
            title: Text('Grande Jagras'),
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(//Imagem render
                    children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/g_j_rend.png'),
                  ),
                ]),
                //Linha de dados 1

                Row(children: <Widget>[
                  Text('Elementos:', textAlign: TextAlign.left),
                  Text('Nenhum', textAlign: TextAlign.right),
                ]),

                Row(children: <Widget>[
                  Text(
                    'Fraquesas:',
                    textAlign: TextAlign.left,
                  ),
                  Image(
                    image: AssetImage('assets/images/fogo.png'),
                    alignment: Alignment.bottomRight,
                  ),
                  Image(
                    image: AssetImage('assets/images/raio.png'),
                    alignment: Alignment.bottomRight,
                  ),
                  Image(
                    image: AssetImage('assets/images/gelo.png'),
                    alignment: Alignment.bottomRight,
                  ),
                ]),

                Row(children: <Widget>[
                  Text('Resistencias:'),
                  Image(image: AssetImage('assets/images/agua.png'))
                ]),

                Row(children: <Widget>[
                  Text('Local:'),
                  Text('Floresta Ancestral'),
                ]),
              ],
            ),
          )),
    );
  }
}
