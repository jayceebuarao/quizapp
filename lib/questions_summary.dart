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
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Index(
                      data: data,
                      correctQuestions: correctQuestions,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['question'] as String,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Your Answer:',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 236, 29)),
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
                                style: TextStyle(
                                    color: Color.fromARGB(255, 90, 215, 98)),
                              ),
                              Text(
                                data['correct_answer'] as String,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
