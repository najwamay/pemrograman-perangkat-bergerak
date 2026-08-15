import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dadu"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;

  void randomDice() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: () { 
                    setState(() {
                      randomDice();
                    });
                   },
                  child: Image.asset("images/dice$leftDice.png"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: () { 
                    setState(() {
                      randomDice();
                    });
                   },
                  child: Image.asset("images/dice$rightDice.png"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total: ${leftDice + rightDice}",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
