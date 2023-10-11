import 'package:decider_app/util/nav_bar.dart';
import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      drawer: const NavBar(),
      body: const Center(
        child: Text('Dice page'),
      ),
    );
  }
}
