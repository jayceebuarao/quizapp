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
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.pink.shade200,
              padding: const EdgeInsets.all(20),
              side: BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: Colors.pink.shade200,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            icon: const Icon(Icons.quiz_rounded),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}
