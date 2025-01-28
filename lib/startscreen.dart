import 'package:flutter/material.dart';

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
          Image.asset(
            "assets/images/quiz-logo.png",
            scale: 2,
            color: const Color.fromARGB(204, 255, 255, 255),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Learn flutter",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              fun();
            },
            child: Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
