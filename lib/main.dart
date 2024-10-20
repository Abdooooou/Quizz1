import 'package:flutter/material.dart';
import 'package:quizz/acceuil.dart';
import 'package:quizz/homepage.dart';
import 'package:quizz/homepage2.dart';
import 'package:quizz/homepage3.dart';
import 'package:quizz/homepage4.dart';
import 'package:quizz/homepage5.dart';
import 'package:quizz/endgame.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizz App',
      initialRoute: '/',
      routes: {
        '/': (context) => const AcceuilPage(),
        '/homepage': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
          return HomePage(
            score: args['score'] ?? 0,
            correctAnswers: args['correctAnswers'] ?? 0,
            totalQuestions: args['totalQuestions'] ?? 0,
          );
        },
        '/homepage2': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
          return HomePage2(
            score: args['score'] ?? 0,
            correctAnswers: args['correctAnswers'] ?? 0,
            totalQuestions: args['totalQuestions'] ?? 0,
          );
        },
        '/homepage3': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
          return HomePage3(
            score: args['score'] ?? 0,
            correctAnswers: args['correctAnswers'] ?? 0,
            totalQuestions: args['totalQuestions'] ?? 0,
          );
        },
        '/homepage4': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
          return HomePage4(
            score: args['score'] ?? 0,
            correctAnswers: args['correctAnswers'] ?? 0,
            totalQuestions: args['totalQuestions'] ?? 0,
          );
        },
        '/homepage5': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
          return HomePage5(
            score: args['score'] ?? 0,
            correctAnswers: args['correctAnswers'] ?? 0,
            totalQuestions: args['totalQuestions'] ?? 0,
          );
        },
        '/endgame': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
          return EndGame(
            finalScore: args['finalScore'] ?? 0,  // Default to 0 if not provided
            correctAnswers: args['correctAnswers'] ?? 0, // Correct answers passed from previous page
            totalQuestions: args['totalQuestions'] ?? 0, // Total questions passed from previous page
          );
        },
      },
    );
  }
}
