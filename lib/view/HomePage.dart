import 'dart:math';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Random rand = Random();
  int randomNumber = Random().nextInt(12);
  bool boolValue = true;
  double doubleValue = 0.0;

  List<Color> colorsList=[
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.pink,
    Colors.black,
    Colors.teal,
    Colors.deepPurpleAccent,
    Colors.green,
    Colors.brown,
    Colors.pinkAccent,
    Colors.blueGrey,
    Colors.white70,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          setState(() {
          randomNumber = Random().nextInt(12);
          });
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
             color: colorsList[randomNumber],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Hi There",style: TextStyle(color: randomNumber == 2 || randomNumber == 11 ? Colors.black : Colors.white,fontWeight: FontWeight.bold, fontSize: 24),))
            ],
          ),
        ),
      ),
    );
  }
}
