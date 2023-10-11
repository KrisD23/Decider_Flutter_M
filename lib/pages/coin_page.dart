import 'package:decider_app/util/nav_bar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CoinPage extends StatefulWidget {
  const CoinPage({super.key});

  @override
  State<CoinPage> createState() => _CoinPageState();
}

class _CoinPageState extends State<CoinPage> {
  int coinNumber = 2;
  void flipCoin() {
    setState(() {
      coinNumber = Random().nextInt(2) + 1;
      print(coinNumber);
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/images/Coin$coinNumber.png'),
            TextButton(
              onPressed: flipCoin,
              child: const Text('Flip Coin'),
            ),
          ],
        ),
      ),
    );
  }
}
