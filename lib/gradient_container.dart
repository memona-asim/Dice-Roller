import 'package:first_app/diceRoller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer.purple({super.key})
      : clr1 = Colors.purpleAccent,
        clr2 = Colors.deepPurple;

  final Color clr1;
  final Color clr2;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [clr1, clr2])),
      child: const Center(
          child: DiceRoller(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget(this.text,
      {super.key}); // this.text is the same as the String text and then making it equal to decalred variable
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
