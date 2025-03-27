import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/page/question_summary_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.backToQuizPage,
    required this.chosenAnswer,
  });

  final List<String> chosenAnswer;

  final void Function() backToQuizPage;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalOfQuestion = questions.length;
    final totalOfCorrectQuestion =
        summaryData
            .where((data) => data['user_answer'] == data['correct_answer'])
            .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'You answer $totalOfCorrectQuestion out of $totalOfQuestion question!',
              style: GoogleFonts.prompt(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            QuestionSummaryPage(summaryData: summaryData),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: backToQuizPage,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                backgroundColor: const Color.fromARGB(139, 33, 139, 226),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Restart Question',
                textAlign: TextAlign.center,
                style: GoogleFonts.prompt(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
