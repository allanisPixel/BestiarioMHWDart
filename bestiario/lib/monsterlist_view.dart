import 'package:flutter/material.dart';
import 'Components/searchinput/search_input.dart';
import 'Components/monster_card/monster_card.dart';

void main() {
  runApp(MonsterListView());
}

class MonsterListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFECE5CC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE9D6B5),
        foregroundColor: Colors.black,
        title: const Text("Bem vindo Caçador"),
      ),
      drawer: const Drawer(
        backgroundColor: Color(0xFFE9D6B5),
      ),
      body: ListView(
        children: <Widget>[
          SearchField(),
          const MonsterCard(
              imagePath: 'images/anjanath.png', title: "Anjanath"),
          const MonsterCard(
              imagePath: 'images/brachydeos.png', title: "Bracydeos"),
          const MonsterCard(
              imagePath: 'images/nargacuga.png', title: "Nargacuga"),
          const MonsterCard(
              imagePath: 'images/nergigante.png', title: "Nergigante")
        ],
      ),
    ));
  }
}
