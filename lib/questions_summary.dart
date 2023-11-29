import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: data['user_answer'] == data['correct_answer']
                          ? const Color.fromARGB(255, 150, 190, 245)
                          : const Color.fromARGB(255, 249, 133, 241),
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    ((data['Question_index'] as int) + 1).toString(),
                    style: GoogleFonts.nunito(
                        color: const Color.fromARGB(255, 22, 2, 56),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (data['question'] as String),
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(data['correct_answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 150, 190, 245))),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                            color:  Color.fromARGB(255, 249, 133, 241)),
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
