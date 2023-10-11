import 'package:decider_app/pages/coin_page.dart';
import 'package:decider_app/pages/dice_page.dart';
import 'package:decider_app/pages/random_page.dart';
import 'package:decider_app/util/nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      drawer: const NavBar(),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
