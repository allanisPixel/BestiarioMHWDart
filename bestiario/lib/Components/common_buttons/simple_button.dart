import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final String texto;
  //final rout;

  const SimpleButton({required this.texto});
  @override
  Widget build(BuildContext contect) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE9D6B5),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            child: Text(texto, style: TextStyle(fontSize: 25)),
            margin: EdgeInsets.only(left: 20, right: 20),
          ),
        ],
      ),
    );
  }
}
