class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final List.of(answers).shuffle();
     // here we copied the list and shuffled it.
     // we are calling a method on the result of function of another method.

  }
}
