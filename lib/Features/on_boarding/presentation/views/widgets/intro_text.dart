
import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 52,
            fontFamily: "helvetica",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "Read without limits",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "helvetica",
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
