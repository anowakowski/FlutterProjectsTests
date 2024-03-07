import 'package:adv_basics_quiz_app/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:Scaffold (
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 119, 30, 160), Color.fromARGB(255, 107, 15, 168)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            )
          ),
          child: const StartScreen()
        )
      )
    )
  );
}