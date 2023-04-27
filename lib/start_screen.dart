import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({super.key});

  void startQuiz() {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade200),
              child: Text(
                'Start Quiz',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          )
        ],
      ),
    );
  }
}
