import 'package:flutter/material.dart';
import 'package:quizapp/index_format.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, this.correctQuestions, {super.key});

  final List<Map<String, Object>> summaryData;
  final Iterable<Map<String, Object>> correctQuestions;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Index(
                  data: data,
                  correctQuestions: correctQuestions,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question'] as String,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Your Answer:',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(children: [
                        const Text(
                          'Correct Answer:',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ]),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
