import 'package:flutter/material.dart';
import 'package:quizapp/results_screen.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  List<String> selectedAnswers = [];

  void getSelectedAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(
          chosenAnswers: selectedAnswers,
          resetQuiz: switchScreen,
        );
      });
    }
  }

  @override
  void initState() {
    super.initState();
    activeScreen = StartQuiz(switchScreen);
  }

  void switchScreen() {
    setState(() {
      if (selectedAnswers.isNotEmpty) selectedAnswers.clear();
      activeScreen = QuestionsScreen(
        onSelectAnswer: getSelectedAnswers,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 5, 41, 14),
        body: activeScreen,
      ),
    );
  }
}
