void main(){
  double score = 0;

  int correctAnswers = 17;
  int mistakes = 3;
  int totalQuestions = 20;

  score += correctAnswers * 10;
  score -= mistakes * 5;
  score *= 2;
  double finalScore = score / totalQuestions;
  print('Остаточний результат: $finalScore');
}
