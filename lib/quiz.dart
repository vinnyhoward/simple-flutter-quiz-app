import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quizQuestions;
  final int answerIndex;
  final Function answerQuestions;

  Quiz(
      {@required this.quizQuestions,
      @required this.answerQuestions,
      @required this.answerIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(quizQuestions[answerIndex]['questionText']),
        ...(quizQuestions[answerIndex]['answers'] as List<String>)
            .map((question) {
          return Answer(answerQuestions, question);
        }).toList(),
      ],
    );
  }
}
