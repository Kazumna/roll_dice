import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  //Initial val is 2
  var currentDiceRoll = 2;

  void rollDice() {
    // Random().nextInt(6);   /// Between 0 and 5 (inclusive)
    var diceRoll = Random().nextInt(6) + 1;   /// Between 1 and 6 (inclusive)

    setState(() {
      currentDiceRoll = diceRoll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )
          ),
          child: Text(
            'Roll Dice',
          ),

        ),

      ],
    );
  }
}