import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionPage();
}

class _QuestionPage extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(currentQuestion.text, style: TextStyle(color: Colors.white)),
            const SizedBox(height: 30),
            ...currentQuestion.answer.map((item){
              return AnswerButton(answerText: item, answerTap: () {});
            }),
          ],
        ),
      ),
    );
  }
}
