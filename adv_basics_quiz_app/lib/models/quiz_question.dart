class QuizQuestion {
  const QuizQuestion(this.text, this.anwsers);

  final String text;
  final List<String> anwsers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(anwsers);
    shuffledList.shuffle();
    return shuffledList;
  }

}