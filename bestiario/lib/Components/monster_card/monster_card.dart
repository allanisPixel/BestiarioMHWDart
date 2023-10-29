import 'package:flutter/material.dart';

class MonsterCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const MonsterCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE9D6B5),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 30),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 10, right: 40),
              child: Image(
                image: AssetImage(imagePath),
                width: 108,
                height: 109,
              )),
          Container(
            child: Text(title, style: TextStyle(fontSize: 24)),
            margin: EdgeInsets.only(left: 0, right: 0),
          ),
        ],
      ),
    );
  }
}
