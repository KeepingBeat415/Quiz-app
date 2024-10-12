import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map(
              (item) {
                return SummaryItem(item);
                // return Row(children: [
                //   // "as" type casting
                //   Chip(
                //     label: Text(
                //         ((item['question_index'] as int) + 1).toString(),
                //         style: GoogleFonts.lato(
                //             color: Colors.black, fontSize: 16)),
                //     backgroundColor: Colors.pinkAccent,
                //     padding: EdgeInsets.all(0.01),
                //   ),
                //   const SizedBox(
                //     width: 5,
                //   ),
                //   //expends a child of a [Row], [column], or [Flex] so that the child fills the available space along the flex widget's main axis
                //   Expanded(
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment
                //           .start, // Aligns children to the left

                //       children: [
                //         Text(
                //           item['question'] as String,
                //           style: GoogleFonts.lato(
                //               color: Colors.white,
                //               fontSize: 16,
                //               fontWeight: FontWeight.bold),
                //           textAlign: TextAlign.left,
                //         ),
                //         const SizedBox(height: 5),
                //         Text(
                //           item['user_answer'] as String,
                //           style: GoogleFonts.lato(
                //               color: Colors.grey,
                //               fontSize: 16,
                //               fontWeight: FontWeight.bold),
                //           textAlign: TextAlign.left,
                //         ),
                //         Text(
                //           item['correct_answer'] as String,
                //           style: GoogleFonts.lato(
                //               color: Colors.blue,
                //               fontSize: 16,
                //               fontWeight: FontWeight.bold),
                //           textAlign: TextAlign.left,
                //         )
                //       ],
                //     ),
                //   )
                // ]);
              },
            ).toList()
          ],
        ),
      ),
    );
  }
}
