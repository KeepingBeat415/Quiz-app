import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      QuestionIdentifier(
        isCorrectAnswer: isCorrectAnswer,
        questionIndex: itemData['question_index'] as int,
      ),
      const SizedBox(
        width: 20,
      ),
      //expends a child of a [Row], [column], or [Flex] so that the child fills the available space along the flex widget's main axis
      Expanded(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Aligns children to the left

          children: [
            Text(
              itemData['question'] as String,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              itemData['user_answer'] as String,
              style: GoogleFonts.lato(
                color: Colors.grey,
              ),
            ),
            Text(
              itemData['correct_answer'] as String,
              style: GoogleFonts.lato(
                color: Colors.blue,
              ),
            )
          ],
        ),
      )
    ]);
  }
}
