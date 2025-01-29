import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.answerText, {super.key});

  var answerText;
  // final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: () {
        // onTap();
      },
      style: ElevatedButton.styleFrom(),
      child: Text('$answerText'),
    );
  }
}
