import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/image/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(134, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: switchScreen,
            style: TextButton.styleFrom(fixedSize: Size.fromWidth(200)),
            label: const Text(
              "START QUIZ",
              style: TextStyle(color: Colors.black),
            ),
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
