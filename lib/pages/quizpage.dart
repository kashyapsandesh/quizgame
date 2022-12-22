import 'package:flutter/material.dart';
import 'package:quizapp/pages/quizbrain.dart';

QuizBrain quizBrain = QuizBrain();

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
  List<Icon> scoreKeeper = [];
  ElevatedButton answerButton(bool bName) {
    return ElevatedButton(
      onPressed: () {
        bool correctAnswer = quizBrain.getQuestionAnswer();
        print(correctAnswer);

        if (correctAnswer == true) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.white,
            ),
          );
          print('user got it true');
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
          print('user got it wrong');
        }
        setState(() {
          quizBrain.nextQuestion();
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
          quizBrain.getQuestionText(),
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
          answerButton(true),
          
          const SizedBox(
            height: 10,
          ),
          answerButton(false),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
