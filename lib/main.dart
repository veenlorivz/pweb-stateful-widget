import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> dadu = [
    "dice1.png",
    "dice2.png",
    "dice3.png",
    "dice4.png",
    "dice5.png",
    "dice6.png"
  ];

  String dadu1 = "dice6.png";
  String dadu2 = "dice6.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice"),
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                this.dadu1 = dadu[Random().nextInt(6)];
                this.dadu2 = dadu[Random().nextInt(6)];
              });
            },
            child: Text(
              "Roll",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[850]),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/img/' + dadu1,
              width: 120.0,
              height: 120.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Image.asset(
              'assets/img/' + dadu2,
              width: 120.0,
              height: 120.0,
            )
          ]),
        ],
      ),
      backgroundColor: Colors.grey[850],
    );
  }
}
