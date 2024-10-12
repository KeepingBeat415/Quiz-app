import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  //passing function as argument values, add function return type
  //"this.startQuiz" >> this. work as point to class declared variable
  const StartScreen(this.startQuiz, {super.key});

  //constructor parameter can't directly use by class body
  //need to declare variable as place hold
  final void Function() startQuiz;

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
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            // anonymous function only be executed when press button
            //anonymous function passes as a value to the onPressed argument
            // onPressed: () { // => option 1
            //   //pass parent's function object pointer, and call it
            //   startQuiz();
            // },
            // ==> option 2
            // replace anonymous function as pointer of startQuiz variable
            onPressed: startQuiz,
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
