import 'package:flutter/material.dart';

class QuestionsPage extends StatefulWidget{
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionPage();
}

class _QuestionPage extends State<QuestionsPage>{
  @override
  Widget build(BuildContext context) {
   return Center(child: Text("QUIZ PAGE"));
  }

}