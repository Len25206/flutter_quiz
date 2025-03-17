import 'package:flutter/material.dart';

class ExamButton extends StatefulWidget {
  const ExamButton({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProceedExam();
  }
}

class ProceedExam extends State<ExamButton> {
  void proceedOnExam() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: proceedOnExam,
      style: TextButton.styleFrom(fixedSize: Size.fromWidth(200),),
      label: const Text("START QUIZ", style: TextStyle(color: Colors.black)),
      icon: const Icon(Icons.arrow_forward),
    );
  }
}
 