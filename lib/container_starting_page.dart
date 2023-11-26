import 'package:flutter/material.dart';

class ContainerHomePage extends StatefulWidget {
  const ContainerHomePage({super.key});

  @override
  State<ContainerHomePage> createState() {
    return _ContainerHomePage();
  }
}

class _ContainerHomePage extends State<ContainerHomePage> {
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          height: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
              fontSize: 25, fontFamily: 'Hind', color: Colors.amberAccent),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
            onPressed: () {},
            child: const Text('Start Quiz',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Hind',
                    color: Colors.amberAccent))),
      ],
    );
  }
}
