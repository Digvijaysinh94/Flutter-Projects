import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice App"),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dicenumber = 1;
  int rdicenumber = 2;

  void changed() {
    setState(() {
      dicenumber = Random().nextInt(6) + 1;
    });
  }

  void rchanged() {
    setState(() {
      rdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                changed();
              },
              child: Image.asset('images/images$dicenumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                rchanged();
              },
              child: Image.asset('images/images$rdicenumber.png'),
            ),
          ),
        ],
      ),
    );
    return Container();
  }
}
