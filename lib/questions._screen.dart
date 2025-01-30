import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    // currentQuestionIndex = currentQuestionIndex + 1;
    // currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++; // increment by 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 600,
        child: Container(
          margin: EdgeInsets.only(left: 90, right: 90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 30),

              ...currentQuestion.getShuffledAnswers().map((answer) {
                // ...currentQuestion.answers.map((answer) {

                // We will apply shuffle function here, it changes the original data.
                // while ... spread function doesn't
                return AnswerButton(
                  answerText: answer,
                  onTap: answerQuestion,
                );
              })
              // Now answer buttons will get created dynamically according to the number of questions given.
              // Mapping list using spread operator
            ],
          ),
        ),
      ),
    );
  }
}
