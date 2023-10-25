import "package:flutter/material.dart";

void main() {
  runApp(Splashscreen());
}

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            Text('Bestiario PT/BR')
          ],
        ),
      )),
    );
  }
}
