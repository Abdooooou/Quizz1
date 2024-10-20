import 'package:flutter/material.dart';

class AcceuilPage extends StatelessWidget {
  const AcceuilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Make the stack fill the entire screen
        children: [
          // Background image
          Image.asset(
            'assets/quizz1.png', // Change this to your image path

          ),
          // Overlay to darken the image
          Container(
            color: Colors.black54, // Semi-transparent black overlay
          ),
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'IQ Quizz !',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white, // White text color
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 500),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homepage');

                  },
                  child: const Text('Start Quizz',
                      style : TextStyle(fontSize:20,fontWeight: FontWeight.bold,)
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 143, 117, 54), // Updated button color (primary)
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 25),
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
