import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

var firstDiceImages = 'assets/images/dice-1.png';
var secondDiceImages = 'assets/images/dice-2.png';

class _DiceRollerState extends State<DiceRoller> {
  final List<String> diceIamges = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png',
  ];

  void rollDice() {
    setState(() {
      final randomIndex1 = Random().nextInt(diceIamges.length);
      final randomIndex2 = Random().nextInt(diceIamges.length);

      firstDiceImages = diceIamges[randomIndex1];
      secondDiceImages = diceIamges[randomIndex2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              firstDiceImages,
              width: 140,
            ),
            const SizedBox(width: 20),
            Image.asset(
              secondDiceImages,
              width: 140,
            ),
          ],
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow[100],
            foregroundColor: Colors.grey[900],
            shadowColor: Colors.black.withOpacity(0.5),
            elevation: 5,
            minimumSize: const Size(150, 50),
          ),
          child: const Text(
            "Roll the Dice",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
