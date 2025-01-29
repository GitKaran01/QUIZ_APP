import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The quesiton...",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 30),
         
AnswerButton(1),
AnswerButton(2),
AnswerButton(3),
        
        ],
      ),
    );
  }
}
