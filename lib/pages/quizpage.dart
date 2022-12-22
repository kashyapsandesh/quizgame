import 'package:flutter/material.dart';
import 'package:quizapp/pages/questions.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // List questions = [
  //   'Milk is Green',
  //   'The earth revolves the moon',
  //   'Police Arrests the theives',
  //   'Birds lives in nest',
  // ];
  List<Questions> questionsBanks = [
    Questions(questionText: 'Milk is Green', questionAnswer: false),
    Questions(
        questionText: 'The earth revolves the moon', questionAnswer: false),
    Questions(questionText: 'Police Arrests the theives', questionAnswer: true),
  ];

  int questionNumber = 0;
  // List<Icon> scoreKeeper = [
  //   Icon(
  //     Icons.check,
  //     color: Colors.white,
  //   ),
  //   Icon(
  //     Icons.close,
  //     color: Colors.red,
  //   ),
  //   Icon(
  //     Icons.check,
  //     color: Colors.white,
  //   ),
  //   Icon(
  //     Icons.close,
  //     color: Colors.red,
  //   ),
  // ];
  ElevatedButton answerButton(String bName) {
    return ElevatedButton(
      onPressed: () {
        bool correctAnswer = questionsBanks[questionNumber].questionAnswer;
        setState(() {
          questionNumber++;
        });
        // setState(() {
        //   scoreKeeper.add(
        //     Icon(
        //       Icons.check,
        //       color: Colors.white,
        //     ),
        //   );
        // });
      },
      child: SizedBox(
        height: 100,
        width: 300,
        child: Center(
          child: Text(
            " $bName",
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }

  SizedBox nContent() {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Center(
        child: Text(
          questionsBanks[questionNumber].questionText,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          nContent(),
          answerButton("True"),
          const SizedBox(
            height: 10,
          ),
          answerButton("False"),
          const SizedBox(
            height: 10,
          ),
          Row(
              // children: scoreKeeper,
              )
        ],
      ),
    );
  }
}
