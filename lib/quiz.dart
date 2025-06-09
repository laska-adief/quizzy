import 'package:flutter/material.dart';
import 'package:quizzy/questions.dart';
import 'package:quizzy/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const Questions();
    }

    return MaterialApp(
      title: 'QUIZZY',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 148, 54),
        body: screenWidget,
      ),
    );
  }
}
