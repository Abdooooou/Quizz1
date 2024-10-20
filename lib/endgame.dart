import 'package:flutter/material.dart';

class EndGame extends StatelessWidget {
  final int finalScore;
  final int correctAnswers;
  final int totalQuestions;

  const EndGame({
    Key? key,
    required this.finalScore,
    required this.correctAnswers,
    required this.totalQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/quizz3.png', // Ensure this path is correct
            fit: BoxFit.cover,
          ),
          // Overlay with a semi-transparent container
          Container(
            color: Colors.black54, // Optional: semi-transparent black overlay
          ),
          // Center content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Final Score: $finalScore',
                  style: const TextStyle(fontSize: 24, color: Colors.white), // Set text color to white for visibility
                ),
                const SizedBox(height: 10),
                Text(
                  'Correct Answers: $correctAnswers',
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  'Total Questions: $totalQuestions',
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
