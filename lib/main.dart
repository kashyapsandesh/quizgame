import 'package:flutter/material.dart';
import 'package:quizapp/pages/quizpage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "quizapp",
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(child: QuizPage()),
      ),
    );
  }
}
