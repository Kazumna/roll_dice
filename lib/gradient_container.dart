import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

//final mean this data container variable will never receive a new value
// final startAlignment = Alignment.topLeft;
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;

  const GradientContainer(this.color1, this.color2, {super.key});

  ///Class can have multiple constructors
  // GradientContainer.purple({super.key})
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigo;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
