import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: OutlinedButton.icon(
              onPressed: switchScreen,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.pink.shade200,
                side: BorderSide(
                  color: Colors.pink.shade200,
                  width: 2,
                ),
              ),
              icon: const Icon(Icons.quiz_rounded),
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
