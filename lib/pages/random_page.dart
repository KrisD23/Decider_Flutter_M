import 'package:decider_app/util/nav_bar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RandomPage extends StatefulWidget {
  const RandomPage({super.key});

  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  // text controller

  // min number
  final TextEditingController minNumberController = TextEditingController();

  // intial min and max number
  int minNumber = 0;
  int maxNumber = 100;

  int randomNumber = 0;

  // max number
  final TextEditingController maxNumberController = TextEditingController();

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
            // min number text field
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Min number',
              ),
              keyboardType: TextInputType.number,
              controller: minNumberController,
              onSubmitted: (value) => minNumber,
            ),

            // max number text field

            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Max number',
              ),
              keyboardType: TextInputType.number,
              controller: maxNumberController,
              onSubmitted: (value) => maxNumber,
            ),

            // generate random number button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  minNumber = int.parse(minNumberController.text);
                  maxNumber = int.parse(maxNumberController.text);
                  randomNumber = Random().nextInt(maxNumber - minNumber) +
                      minNumber; // generates a random number between min and max number
                });
              },
              child: const Text('Generate Random Number'),
            ),
            Text(randomNumber.toString())
          ],
        ),
      ),
    );
  }
}
