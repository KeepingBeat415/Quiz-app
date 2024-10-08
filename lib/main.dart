import 'package:flutter/material.dart';
import 'package:quiz_app/GradientContainer.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // body: GradientContainer(
        //   color1: Color.fromARGB(255, 88, 32, 186),
        //   color2: Color.fromARGB(255, 109, 72, 174),
        // ),
        body: StartScreen(),
      ),
    ),
  );
}
