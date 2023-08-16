import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //Store it      //Adding final key word mean it will never change internally
  final String text;

  //Accept text as an argument
  const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      //use it
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}