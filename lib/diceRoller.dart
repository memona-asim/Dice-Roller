import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<DiceRoller> {
  var imageLink = 'assets/dice-1.png';

  void rollDice() {
    setState(() {
      var num = Random().nextInt(6) + 1;
      switch (num) {
        case 1:
          imageLink = 'assets/dice-1.png';
          break;
        case 2:
          imageLink = 'assets/dice-2.png';
          break;
        case 3:
          imageLink = 'assets/dice-3.png';
          break;
        case 4:
          imageLink = 'assets/dice-4.png';
          break;
        case 5:
          imageLink = 'assets/dice-5.png';
          break;
        case 6:
          imageLink = 'assets/dice-6.png';
          break;
      }
    });
    // ignore: avoid_print
    print("Rolling");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imageLink,
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
