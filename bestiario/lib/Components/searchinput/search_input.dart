import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  String getvalue(value) {
    // Corpo da função
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: const TextField(
          decoration: InputDecoration(
        hintText: "Buscar...",
        suffixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10), right: Radius.circular(10)),
        ),
        filled: true,
        fillColor: Color(0xFFE9D6B5),
      )),
    );
  }
}
