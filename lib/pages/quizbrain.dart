import 'package:quizapp/pages/questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questionsBanks = [
    Questions(questionText: 'Milk is Green', questionAnswer: false),
    Questions(
        questionText: 'The earth revolves the moon', questionAnswer: false),
    Questions(questionText: 'Police Arrests the theives', questionAnswer: true),
    Questions(
        questionText: 'Some cats are actually allergic to humans',
        questionAnswer: true),
    Questions(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Questions(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionsBanks.length - 1) {
      _questionNumber++;
      print(_questionNumber);
      print(_questionsBanks.length);
    } else {
      _questionNumber = 0;
    }
  }

  String getQuestionText() {
    return _questionsBanks[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionsBanks[_questionNumber].questionAnswer;
  }
}
