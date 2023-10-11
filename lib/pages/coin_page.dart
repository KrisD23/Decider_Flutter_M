import 'package:decider_app/util/nav_bar.dart';
import 'package:flutter/material.dart';

class CoinPage extends StatelessWidget {
  const CoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      drawer: const NavBar(),
      body: const Center(
        child: Text('Coin page'),
      ),
    );
  }
}
