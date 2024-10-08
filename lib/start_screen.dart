import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 88, 32, 186),
          Color.fromARGB(255, 109, 72, 174),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
    );
  }
}
