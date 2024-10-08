import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return Column(children: [
      const SizedBox(height: 120),
      Image.asset(
        'assets/images/quiz-logo.png',
        width: 300,
        height: 400,
      ),
      const Text(
        'Learn Flutter the fun way!',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 25,
        ),
      ),
    ]);
  }
}
