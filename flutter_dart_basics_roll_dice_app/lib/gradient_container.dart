import 'package:flutter/material.dart';
import 'package:flutter_dart_basics1/styled_text.dart';

const startAlingment = Alignment.topLeft;
const endAlingment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98)],
            begin: startAlingment,
            end: endAlingment
        )
      ),
      child: const Center(
        child: StyledText('test text')
      ),
    );
  }

}