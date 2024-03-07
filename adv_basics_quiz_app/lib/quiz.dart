import 'package:adv_basics_quiz_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }

}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }

}