import 'package:decider_app/pages/coin_page.dart';
import 'package:decider_app/pages/dice_page.dart';
import 'package:decider_app/pages/random_page.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Dice'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DicePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Coin'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CoinPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Random Num'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const RandomPage()),
              );
            },
          )
        ],
      ),
    );
  }
}
