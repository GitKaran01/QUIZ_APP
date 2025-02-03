import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    // true data will be kept and not true will be drop dynamically.
    // where is used to filter the list and create a new list based on the original list.

    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 600,
        child: Container(
          margin: EdgeInsets.only(left: 90, right: 90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You answered $numCorrectQuestion out of $numTotalQuestions questions correctly!",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionsSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Restart  Quiz',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
