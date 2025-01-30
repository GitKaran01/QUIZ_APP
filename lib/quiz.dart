import 'package:flutter/material.dart';
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
  final List<String> selectedAnswers = [];
  var currentScreen = 'startscreen';

  void switchpage() {
    setState(() {
      currentScreen = 'questionscreen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    Widget screenWidget = Startscreen(switchpage);

    if (currentScreen == 'questionscreen') {
      screenWidget = QuestionsScreen(chooseAnswer);
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
