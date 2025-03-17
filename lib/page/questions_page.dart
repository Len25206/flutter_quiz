import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/models/quiz_question.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionPage();
}

class _QuestionPage extends State<QuestionsPage> {
  int currentIndexQuestion = 0;
  void nextQuestion() {
    setState(() {
      currentIndexQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    late QuizQuestion currentQuestion;
    if (currentIndexQuestion != questions.length) {
    currentQuestion = questions[currentIndexQuestion];
    }
    
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
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffleAnswer().map((item) {
                return AnswerButton(answerText: item, answerTap: nextQuestion);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
