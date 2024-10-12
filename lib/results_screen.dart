import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chooseAnswers, required this.restartQuiz});

  final List<String> chooseAnswers;
  final void Function() restartQuiz;

  //get method
  //List<Map<String, Object>> get summaryData, and it's able to access as variable
  //Object is a pretty flexible type to accept all kinds of type value
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chooseAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chooseAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    //arrow function
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer']);

    // final numCorrectQuestions = summaryData.where((data) {
    //   return data['user_answer'] == data['correct_answer'];
    // }).length;

    return SizedBox(
      width: double.infinity, //using maximum width
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: restartQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.rotate_left_rounded),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
