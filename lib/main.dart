import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftdicenumber = 1;
  var rightdicenumber = 1;
  void dicechange() {
    leftdicenumber = Random().nextInt(6) + 1;
    rightdicenumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1, //fleax is the ratio

                child: TextButton(
                  onPressed: (() {
                    setState(() {
                      dicechange();
                    });
                  }),
                  child: Image(
                    image: AssetImage("images/dice$leftdicenumber.png"),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      dicechange();
                    });
                  },
                  child: Image.asset("images/dice$rightdicenumber.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
