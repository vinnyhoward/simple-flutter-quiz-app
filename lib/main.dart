import 'package:flutter/material.dart';
// import 'package:simple_flutter_quiz_app/shared/styles/styles.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizWidget();
  }
}

class _QuizWidget extends State<App> {
  int _answerIndex = 0;
  void _answerQuestions() {
    setState(() {
      if (_answerIndex <= 3) {
        _answerIndex = _answerIndex + 1;
      } else {
        _answerIndex = 0;
      }
    });
    print('current answer index - ${_answerIndex}');
  }

  var quizQuestions = [
    {
      'questionText': 'What\s your favorite color?',
      'answers': ['Blue', 'Black', 'Red', 'Teal']
    },
    {
      'questionText': 'What\s your favorite animal?',
      'answers': ['Dog', 'Fish', 'Tiger', 'Dinosaur']
    },
    {
      'questionText': 'What\s your favorite anime?',
      'answers': ['My Hero Academia', 'Naruto', 'Cowboy Bebep', 'Berserk']
    },
    {
      'questionText': 'What\s your favorite movie?',
      'answers': [
        'Fight Club',
        'Inception',
        'Mad Max: Fury Road',
        'Avengers Infinity Wars'
      ]
    },
    {
      'questionText': 'What\s your favorite public figure?',
      'answers': [
        'Donald Trump',
        'Joe Biden',
        'Emma Watts',
        'Weird Al Yankavich'
      ]
    },
  ];

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: Column(
            children: <Widget>[
              Question(quizQuestions[_answerIndex]['questionText']),
              ...(quizQuestions[_answerIndex]['answers'] as List<String>)
                  .map((question) {
                return Answer(_answerQuestions, question);
              }).toList(),
            ],
          )),
    );
  }
}
