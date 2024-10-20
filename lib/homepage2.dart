import 'package:flutter/material.dart';
import 'package:quizz/homepage3.dart';

class HomePage2 extends StatelessWidget {
  final int score;
  final int correctAnswers;
  final int totalQuestions;

  const HomePage2({Key? key, required this.score, required this.correctAnswers, required this.totalQuestions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 143, 117, 54),
        title: Text('Mon App - Score: $score'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/acceuil');
            },
            icon: const Icon(Icons.exit_to_app_outlined),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/quizz2.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black54,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'How much time does light take from the Sun to Earth?',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Incorrect answer buttons
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/homepage3',
                        arguments: {
                          'score': score,
                          'correctAnswers': correctAnswers,
                          'totalQuestions': totalQuestions + 1 // increment the total questions
                        },
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Incorrect answer, try again!')),
                      );
                    },
                    child: const Text(
                      '400 seconds',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 143, 117, 54),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/homepage3',
                        arguments: {
                          'score': score,
                          'correctAnswers': correctAnswers,
                          'totalQuestions': totalQuestions + 1 // increment the total questions
                        },
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Incorrect answer, try again!')),
                      );
                    },
                    child: const Text(
                      '300 seconds',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 143, 117, 54),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/homepage3',
                        arguments: {
                          'score': score + 100, // Pass updated score
                          'correctAnswers': correctAnswers + 1, // Increment correct answers
                          'totalQuestions': totalQuestions + 1 // increment the total questions
                        },
                      );
                    },
                    child: const Text(
                      '500 seconds',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 143, 117, 54),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
