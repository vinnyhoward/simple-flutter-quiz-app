// packages
import 'package:flutter/material.dart';

// mock data
import './shared/mockData.dart';

// widgets
import './home/home.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MaterialApp(
      title: 'Navigation Basics',
      home: Home(),
    ));

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizWidget();
  }
}

class _QuizWidget extends State<Quiz> {
  int _answerIndex = 0;
  int _score = 0;

  void _answerQuestions(List correctAnswers, String question) {
    if (correctAnswers.contains(question)) {
      setState(() => _score += 1);
    } else {
      print('Wrong Answer $_answerIndex');
    }

    if (_answerIndex < quizQuestions.length - 1) {
      setState(() {
        _answerIndex = _answerIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: _answerIndex < quizQuestions.length - 1
              ? QuestionList(
                  answerIndex: _answerIndex,
                  answerQuestions: _answerQuestions,
                  quizQuestions: quizQuestions,
                )
              : Result(finalScore: (_score / quizQuestions.length) * 100)),
    );
  }
}
