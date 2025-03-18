import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsPage> createState() => _QuestionPage();
}

class _QuestionPage extends State<QuestionsPage> {
  int currentIndexQuestion = 0;
  void nextQuestion(String tapAnswer) {
      widget.onSelectedAnswer(tapAnswer);
    setState(() {
      currentIndexQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndexQuestion];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.prompt(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffleAnswer().map((item) {
                return AnswerButton(
                  answerText: item,
                  answerTap: () {
                    nextQuestion(item);
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
