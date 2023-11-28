import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingContainer extends StatelessWidget {
  const StartingContainer(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(136, 250, 251, 252),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 174, 167, 214)),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style:
                OutlinedButton.styleFrom(foregroundColor: Colors.amberAccent),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
