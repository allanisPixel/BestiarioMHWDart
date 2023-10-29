// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Components/monster_card/monster_card.dart';

class MonsterList extends StatelessWidget {
  final String huntername;

  const MonsterList({super.key, required this.huntername});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MonsterPage(huntername: huntername),
    );
  }
}

class MonsterPage extends StatefulWidget {
  final String huntername;
  const MonsterPage({Key? key, required this.huntername}) : super(key: key);

  @override
  _MonsterListState createState() => _MonsterListState(username: huntername);
}

class _MonsterListState extends State<MonsterPage> {
  final String username;

  @override
  final List<Map<String, dynamic>> _allMonsters = [
    {"id": 1, "name": "Anjanath", "image": "images/anjanath.png"},
    {"id": 2, "name": "Brachydeos", "image": "images/brachydeos.png"},
    {"id": 3, "name": "Nergigante", "image": "images/nergigante.png"},
    {"id": 4, "name": "Nargacuga", "image": "images/nargacuga.png"},
    {"id": 5, "name": "Rathian", "image": "images/rathian.png"},
    {"id": 6, "name": "Rathalos", "image": "images/rathalos.png"},
  ];

  List<Map<String, dynamic>> _foundMonsters = [];

  _MonsterListState({required this.username});

  @override
  initState() {
    _foundMonsters = _allMonsters;
    super.initState();
  }

  void _runFilter(String name) {
    List<Map<String, dynamic>> results = [];
    if (name.isEmpty) {
      results = _allMonsters;
    } else {
      results = _allMonsters
          .where((monster) =>
              monster["name"].toLowerCase().contains(name.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    setState(() {
      _foundMonsters = results;
    });
    print(results);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFFECE5CC),
          appBar: AppBar(
            backgroundColor: const Color(0xFFE9D6B5),
            foregroundColor: Colors.black,
            title: Text('Bem vindo $username'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: TextField(
                      onChanged: (value) => _runFilter(value),
                      decoration: const InputDecoration(
                        hintText: "Buscar...",
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10)),
                        ),
                        filled: true,
                        fillColor: Color(0xFFE9D6B5),
                      )),
                ),
                Expanded(
                  child: _foundMonsters.isNotEmpty
                      ? ListView.builder(
                          itemCount: _foundMonsters.length,
                          itemBuilder: (context, index) => MonsterCard(
                              imagePath: _foundMonsters[index]['image'],
                              title: _foundMonsters[index]['name']))
                      : const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Nenhum Monstro Encontrado',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                )
              ],
            ),
          )),
    );
  }
}
