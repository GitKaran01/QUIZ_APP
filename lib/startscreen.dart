import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.fun, {super.key});

  final void Function() fun;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset("assets/images/quiz-logo.png"),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Learn flutter",
            style: GoogleFonts.sixtyfour(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              fun();
            },
            child: Text(
              "Start Quiz",
              style:
                  GoogleFonts.ubuntu(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
