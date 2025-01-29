import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}



class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];



    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),

          SizedBox(height: 30),

          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer,onTap: () {},);
          })
          // Now answer buttons will get created dynamically according to the number of questions given.

        ],
      ),
    );
  }
}

