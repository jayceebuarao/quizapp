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
            padding: EdgeInsets.only(top: 30),
            child: OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.pink.shade200,
                side: BorderSide(
                  color: Colors.pink.shade200,
                  width: 2,
                ),
              ),
              icon: Icon(Icons.quiz_rounded),
              label: const Text(
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
