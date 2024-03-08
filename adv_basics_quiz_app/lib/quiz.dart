import 'package:adv_basics_quiz_app/data/questions.dart';
import 'package:adv_basics_quiz_app/questions_screen.dart';
import 'package:adv_basics_quiz_app/results_screen.dart';
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

  List<String> _selectedAnswers = [];
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

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }    
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(chosenAnswers: _selectedAnswers);
      _selectedAnswers = [];
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