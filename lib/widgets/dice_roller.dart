import 'package:flutter/material.dart';
import 'dart:math';
import 'package:learn_flutter/widgets/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //initial value of the dice
  var diceNumber = 2;

  //handle dice roll
  void rollDice() {
    //generating random numbers
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/dice/dice-$diceNumber.png', width: 200),
      const SizedBox(height: 50),
      ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 22)),
          child: const StyledText("Roll the Dice"))
    ]);
  }
}
