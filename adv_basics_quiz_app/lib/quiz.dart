import 'package:adv_basics_quiz_app/questions.dart';
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
  //Widget? activeScreen;

  String activeScreen = 'start-screen';

  /*
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
  */

  void switchScreen(){
    setState(() {
      //activeScreen = const QuestionsScreen();
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen'){
      screenWidget = const QuestionsScreen();
    }

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
          child: screenWidget
        )
      )
    );
  }

}