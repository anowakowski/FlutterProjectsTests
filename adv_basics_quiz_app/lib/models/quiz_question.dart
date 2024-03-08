class QuizQuestion {
  const QuizQuestion(this.text, this.anwsers);

  final String text;
  final List<String> anwsers;

  List<String> get shuffledAnswers {
    final shuffledList = List.of(anwsers);
    shuffledList.shuffle();
    return shuffledList;
  }

}