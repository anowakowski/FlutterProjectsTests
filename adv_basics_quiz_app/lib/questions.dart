import 'package:adv_basics_quiz_app/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {

  void onTap(){

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('The question...', 
              style: TextStyle(
                color: Colors.white
              ),
            ),
            SizedBox(height: 30),
            AnswerButton(answerText: 'test', onTap: onTap)
          ],
          
        ),
    );
  }
}