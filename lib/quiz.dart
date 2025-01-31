import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/startscreen.dart';
import 'package:quiz_app/questions._screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> selectedAnswers = [];

// final List<String> selectedAnswers = [];

  // final is removed from the above bcz we want to reset it such that we again don't land on the error page after the all the questions end.
  // if not done this there would be more answers than questions and the below conditions would never be met again.

  var currentScreen = 'startscreen';

  void switchpage() {
    setState(() {
      currentScreen = 'questionscreen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        currentScreen = 'startscreen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = Startscreen(switchpage);

    if (currentScreen == 'questionscreen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
