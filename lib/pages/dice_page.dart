import 'package:decider_app/util/nav_bar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber = 1;
  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
      print(diceNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      drawer: const NavBar(),
      body: Column(
        children: [
          Image.asset('lib/assets/images/dice-1.png'),
          TextButton(
            onPressed: rollDice,
            child: const Text('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
