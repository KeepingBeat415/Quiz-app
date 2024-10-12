class QuizQuestion {
  final String text;
  final List<String> answers;

  const QuizQuestion(this.text, this.answers);

  List<String> getShuffledAnswers() {
    //'.of' >> copy a list,
    final shuffledList = List.of(answers);
    shuffledList.shuffle(); // chaining function
    return shuffledList;
  }
}
