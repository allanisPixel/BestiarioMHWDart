import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp1());
}

class MeuApp1 extends StatelessWidget {
  Widget build(BuildContext bc) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyanAccent,
            title: Text('Digite o nome do monstro'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(children: const <Widget>[
                  Image(
                    image: AssetImage('assets/images/g_jagras.png'),
                  ),
                  Text('Grande Jagras')
                ]),
                Row(children: const <Widget>[
                  Image(
                    image: AssetImage('assets/images/g_girros.png'),
                  ),
                  Text('Grande Girros')
                ]),
                Row(children: const <Widget>[
                  Image(
                    image: AssetImage('assets/images/dodogama.png'),
                  ),
                  Text('Dodogama')
                ]),
                Row(children: const <Widget>[
                  Image(
                    image: AssetImage('assets/images/tobi_kadachi.png'),
                  ),
                  Text('Tobi Kadachi')
                ]),
              ],
            ),
          )),
    );
  }
}
