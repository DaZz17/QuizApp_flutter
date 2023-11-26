import 'package:flutter/material.dart';
import 'package:quiz_app/container_starting_page.dart';

class StartingContainer extends StatelessWidget {
  const StartingContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.indigoAccent, Colors.deepPurpleAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: const Center(
        child: ContainerHomePage(),
      ),
    );
  }
}
