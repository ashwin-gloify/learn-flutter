import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  // const GradientContainer.purple({super.key})
  //   : startColor : Colors.deepPurple,
  //   endColor : Colors.indigo;

  final Color startColor;
  final Color endColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [endColor, startColor],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
