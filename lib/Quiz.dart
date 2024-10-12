import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //not re-assign with new variable
  List<String> selectedAnswers = [];

  // Option 1 for initial activeScreen

  // use Widget type as a more general type, and able to assign to another Widget
  // if using "var activeScreen" which means activeScreen only assign to "StartScreen" class type
  // using "switchScreen" to pass parent's function into child's widget as pointer
  Widget? activeScreen; // add "?" means activeScreen can't be NULL

  // do some extra initialization work when that state object is created for the first time
  // flow -> SomeObject(): class initialization code -> SomeObject constructor function executes: instance variables & methods are created
  // flow -> SomeObject was created & is stored in memory -> Flutter calls initState()
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  // initState(): Executed by Flutter when the StatefulWidget's State object is initialized

  // build(): Executed by Flutter when the Widget is built for the first time AND after setState() was called

  // dispose(): Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)

  void switchScreen() {
    //function provided by Flutter in that extends State Class
    // setState will call build function to rerender UI
    setState(() {
      activeScreen = QuestionsScreen(onSelectedAnswer: chooseAnswers);
    });
  }

  //option 2 for initial activeScreen
  // var activeScreen = 'start-screen';

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = 'questions-screen';
  //   });
  // }

  void chooseAnswers(String answer) {
    //add value into List without re-assign value, which means doesn't modify variable memory location
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        //activeScreen = StartScreen(switchScreen);
        activeScreen = ResultsScreen(
          chooseAnswers: selectedAnswers,
          restartQuiz: switchScreen,
        );
        selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(context) {
    //option 3 declare variable in the build function
    // final screenWight = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();

    return MaterialApp(
      home: Scaffold(
        // body: GradientContainer(
        //   color1: Color.fromARGB(255, 88, 32, 186),
        //   color2: Color.fromARGB(255, 109, 72, 174),
        // ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 92, 41, 180),
                Color.fromARGB(255, 120, 81, 187),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
          //option 2 for activeScreen
          // using Ternary Expression in the child level
          //child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen()
          //option 3
          //child: screenWidget,
        ),
      ),
    );
  }
}
