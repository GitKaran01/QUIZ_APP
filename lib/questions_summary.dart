import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
// Here we have list of map objects and we have to use it in children but children supports list of widget object. So we will convert the list of map object to list of widget object.

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                // as int is used for typecast to tell dart that we know the value.
                // but the issue is we can't pass the type int to the text widget, hench we wrapped it with toString().

                Expanded(
                  //expanded allow the column to expand till the limit of reow under which it come.
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['user_answer'] as String),
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
          // To list is used to cnovert iterable object to list.
        ),
      ),
    );
  }
}
