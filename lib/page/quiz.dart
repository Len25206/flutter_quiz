import 'package:flutter/material.dart';
import 'package:flutter_quiz/page/home_page.dart';
import 'package:flutter_quiz/page/questions_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  final List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget =
        activeScreen == 'start-screen'
            ? HomePage(switchScreen)
            : QuestionsPage(onSelectedAnswer: (answer) => chooseAnswer(answer));

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 109, 196, 243),
                const Color.fromARGB(255, 32, 153, 228),
                const Color.fromARGB(255, 10, 111, 218),
                const Color.fromARGB(255, 0, 0, 0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
