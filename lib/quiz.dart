import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/startscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {

  var currentScreen = 'startscreen';

  void switchpage() {
    setState(() {
      currentScreen = 'questionscreen';
    });
  }

  @override
  Widget build(context) {

    var screenWidget =  currentScreen == 'startscreen' ? Startscreen(switchpage) : Questions();

    return MaterialApp(
      home : Scaffold(
        body : Container(
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
