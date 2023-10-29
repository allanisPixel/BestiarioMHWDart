// ignore_for_file: non_constant_identifier_names

import 'package:bestiario/MonsterList.dart';
import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final String texto;
  final double bwidth;
  final double bheigth;
  final bool have_arrow;
  final String username;

  const SimpleButton(
      {required this.texto,
      required this.bwidth,
      required this.bheigth,
      required this.have_arrow,
      required this.username});
  @override
  Widget build(BuildContext context) {
    if (have_arrow) {
      return Container(
        width: bwidth,
        height: bheigth,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFFE9D6B5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10, left: 30),
              child: const Image(image: AssetImage("/images/arrow.png")),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: Text(texto,
                  style: const TextStyle(fontSize: 25),
                  textAlign: TextAlign.center),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MonsterList(
                            huntername: username,
                          )),
                );
              },
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: bwidth,
        height: bheigth,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFFE9D6B5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto,
                style: TextStyle(fontSize: 25), textAlign: TextAlign.center),
          ],
        ),
      );
    }
  }
}
