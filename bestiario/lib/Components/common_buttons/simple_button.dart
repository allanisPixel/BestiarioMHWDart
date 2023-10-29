import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final Text texto;
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
            margin: EdgeInsets.only(left: 10, right: 40),),
          Container(
            child: Text(this.texto as String, style: TextStyle(fontSize: 24)),
            margin: EdgeInsets.only(left: 0, right: 0),
          ),

        ],
      ),
    );
  }
}
