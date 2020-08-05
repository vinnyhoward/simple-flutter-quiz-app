import 'package:flutter/material.dart';
import './shared/styles/styles.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questionText,
          style: QuizQuestionBody,
          textAlign: TextAlign.center,
        ));
  }
}
