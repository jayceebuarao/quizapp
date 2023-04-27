import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 7, 46, 27),
        body: StartQuiz(),
      ),
    );
  }
}
