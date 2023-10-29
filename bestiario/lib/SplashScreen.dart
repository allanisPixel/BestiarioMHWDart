// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'Homepage.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: SplashScreen(),
    ));

class SplashScreen extends StatelessWidget {
  late String username;

  @override
  // ignore: avoid_renaming_method_parameters
  Widget build(BuildContext pagecontext) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
          textTheme: Typography.blackCupertino),
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            const Text(
              'Bestiario PT/BR',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromARGB(255, 255, 254, 254)),
              selectionColor: Color.fromARGB(255, 255, 255, 255),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 40, right: 40, top: 30, bottom: 30),
              child: TextField(
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: InputDecoration(
                    hintText: "Qual o seu nome...",
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
                    fillColor: Color.fromARGB(255, 247, 245, 245),
                  )),
            ),
            TextButton(
                onPressed: () {
                  Route route = MaterialPageRoute(
                      builder: (context) => Homepage(
                            huntername: username,
                          ));
                  Navigator.pushReplacement(pagecontext, route);
                },
                style: TextButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    foregroundColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(fontSize: 20)),
                child: Text("Acessar"))
          ],
        ),
      )),
    );
  }
}
