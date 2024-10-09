import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    // return Container(
    //   decoration: const BoxDecoration(
    //     gradient: LinearGradient(colors: [
    //       Color.fromARGB(255, 88, 32, 186),
    //       Color.fromARGB(255, 109, 72, 174),
    //     ], begin: Alignment.topLeft, end: Alignment.bottomRight),
    //   ),
    // );
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(208, 228, 228, 228),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
      //child: Text('Start Screen'),
    );
  }
}
