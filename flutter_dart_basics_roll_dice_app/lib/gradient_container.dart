import 'package:flutter/material.dart';
import 'package:flutter_dart_basics1/dice_roller.dart';

const startAlingment = Alignment.topLeft;
const endAlingment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  GradientContainer.purple({super.key}): colors = [const Color.fromARGB(255, 26, 2, 80)];

  final List<Color> colors;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: startAlingment,
            end: endAlingment
        )
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}