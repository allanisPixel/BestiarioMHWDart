import "package:flutter/material.dart";

void main() {
  runApp(MeuApp1());
}

class MeuApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
          textTheme: Typography.whiteCupertino),
      home: const Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            Text(
              'Bestiario PT/BR',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              selectionColor: Color.fromARGB(255, 255, 255, 255),
            )
          ],
        ),
      )),
    );
  }
}
