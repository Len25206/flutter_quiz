import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/image/quiz-logo.png", width: 300),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom( fixedSize: Size.fromWidth(200)),
            child: Text("START", style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
