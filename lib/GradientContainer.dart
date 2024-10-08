import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {required this.color1, required this.color2, super.key});

  final Color color1;
  final Color color2;
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: const Center(
          child: Quiz(),
        ));
  }
}
