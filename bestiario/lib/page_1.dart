import "package:flutter/material.dart";

void main() {
  runApp(MeuApp1());
}

class MeuApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0)),
      home: Scaffold(
        
        body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
          ///////
          //Container(
          //constraints: BoxConstraints.expand(
          //  height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
          //),
          //padding: const EdgeInsets.all(8.0),
          //color: Color(0xFFFFFF),
          //alignment: Alignment.center,
          //child: Text('Hello World',
          //  style: Theme.of(context)
          //      .textTheme
          //      .headlineMedium!
          //      .copyWith(color: Colors.white)),
          //),
          //////////////






            
            Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            Text(
              'Bestiario PT/BR',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
              selectionColor: Color.fromARGB(255, 255, 255, 255),
            )
          ],
        ),
      )),
    );
  }
}
