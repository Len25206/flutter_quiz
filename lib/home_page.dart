import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        Image.asset("assets/image/quiz-logo.png"),
        ElevatedButton(onPressed: (){}, child: Text("START"))
      ],
    );
  }
}