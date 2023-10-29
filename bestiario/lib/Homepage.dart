import 'package:flutter/material.dart';
import 'Components/common_buttons/simple_button.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: Homepage(huntername: ''),
    ));

class Homepage extends StatelessWidget {
  final String huntername;

  const Homepage({super.key, required this.huntername});

  Widget build(BuildContext bc) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(236, 229, 204, 1),
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFE9D6B5),
            foregroundColor: Colors.black,
            title: Text('Bem vindo $huntername'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    SimpleButton(
                      texto: "Monstros Grandes",
                      bheigth: 57,
                      bwidth: 321,
                      have_arrow: true,
                      username: huntername,
                    ),
                    SimpleButton(
                      texto: "Vida nativa",
                      bheigth: 57,
                      bwidth: 321,
                      have_arrow: true,
                      username: huntername,
                    )
                  ],
                ),
              ),
              Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SimpleButton(
                    texto: "Adornos",
                    bheigth: 120,
                    bwidth: 146,
                    have_arrow: false,
                    username: huntername,
                  ),
                  SimpleButton(
                    texto: "Mapas",
                    bheigth: 120,
                    bwidth: 146,
                    have_arrow: false,
                    username: huntername,
                  ),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SimpleButton(
                    texto: "Items",
                    bheigth: 120,
                    bwidth: 146,
                    have_arrow: false,
                    username: huntername,
                  ),
                  SimpleButton(
                    texto: "Eventos",
                    bheigth: 120,
                    bwidth: 146,
                    have_arrow: false,
                    username: huntername,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
