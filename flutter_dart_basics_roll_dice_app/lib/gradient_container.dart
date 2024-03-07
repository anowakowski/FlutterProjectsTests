import 'package:flutter/material.dart';
import 'package:flutter_dart_basics1/styled_text.dart';

const startAlingment = Alignment.topLeft;
const endAlingment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

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
      child: Center(
        child: Image.asset(
          'assets/images/dice-1.png', 
           width: 200,
        )
      ),
    );
  }

}