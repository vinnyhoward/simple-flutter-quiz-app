import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class QuestionList extends StatelessWidget {
  final List<Map<String, Object>> quizQuestions;
  final int answerIndex;
  final Function answerQuestions;

  QuestionList(
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
          return Answer(
              () => answerQuestions(
                  quizQuestions[answerIndex]['correctAnswers'], question),
              question);
        }).toList(),
      ],
    );
  }
}
