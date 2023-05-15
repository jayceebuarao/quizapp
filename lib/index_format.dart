import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key, required this.data, required this.correctQuestions});

  final Map<String, Object> data;
  final Iterable<Map<String, Object>> correctQuestions;

  Color determineColor(Map<String, Object> thisData) {
    final Color thisColor;
    //TO DO:
    // CHECK IF INT IS EQUAL TO ANY OF THE INDEX IN CORRECT QUESTIONS
    // IF TRUE = COLORS.GREEN
    // IF FALSE = COLORS.RED;

    if (correctQuestions.contains(thisData)) {
      thisColor = Colors.green;
    } else {
      thisColor = Colors.red;
    }
    return thisColor;
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: determineColor(data),
      child: Text(
        ((data['question_index'] as int) + 1).toString(),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
