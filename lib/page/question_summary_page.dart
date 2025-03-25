import 'package:flutter/material.dart';

class QuestionSummaryPage extends StatelessWidget {
  const QuestionSummaryPage({
    super.key,
    required this.summaryData,
    required this.isCorrectAnswer,
  });

  final List<Map<String, Object>> summaryData;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map((data) {
              Color resultColor =
                  (data['user_answer'] == data['correct_answer'])
                      ? Colors.green
                      : Colors.red;
              return Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    resultColor, // Set the color based on correctness
                              ),
                              child: Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  ((data['question_index'] as int) + 1)
                                      .toString(),
                                ),
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              data['question'] as String,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          textAlign: TextAlign.center,
                          data['correct_answer'] as String,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 71, 179, 230),
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          data['user_answer'] as String,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
