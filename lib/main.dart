import 'package:flutter/material.dart';

// import 'package:simple_flutter_quiz_app/shared/styles/styles.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizWidget();
  }
}

class _QuizWidget extends State<App> {
  int _answerIndex = 0;
  int _score = 0;

  void _answerQuestions(List correctAnswers, String question) {
    if (correctAnswers.contains(question)) {
      print('Correct Answer!');
    } else {
      return print('Wrong Answer');
    }

    if (_answerIndex < quizQuestions.length - 1) {
      setState(() {
        _answerIndex = _answerIndex + 1;
      });
    } else {
      setState(() {
        _answerIndex = 0;
      });
    }
  }

  final quizQuestions = const [
    {
      'questionText': 'What are "Types"?',
      'answers': [
        'Data types of values you work in your code',
        'The name types of variables in your code',
        'Function arguments used in your code',
      ],
      'correctAnswers': ['Data types of values you work in your code'],
      'feedback':
          'Types describe which type of data you\'re using in a variable, function etc.'
    },
    {
      'questionText': 'What\'s the job of "variables"?',
      'answers': [
        'Variables allow you to execute code whenver you want',
        'Variables describe which type of data you\'re working with',
        'Variables hold data with which you can work in your code'
      ],
      'correctAnswers': [
        'Variables hold data with which you can work in your code'
      ],
      'feedback': 'Variables are basically data containers.'
    },
    {
      'questionText': 'What are "functions"?',
      'answers': [
        'Functions can be instantiated to create objects',
        'Functions store data so that you can use it later',
        'Functions hold code which you can call as often and whenever you want'
      ],
      'correctAnswers': [
        'Functions hold code which you can call as often and whenever you want'
      ],
      'feedback':
          'Functions are basically "code snippets" which you write once to then use them as often and whenever you want.'
    },
    {
      'questionText': 'What\'s a "class"?',
      'answers': [
        'A class is a data container for data with which you can work at a later point of time',
        'A class is a blueprint for objects which you can create based on it',
        'A class is basically the same as a Flutter widget'
      ],
      'correctAnswers': [
        'A class is a blueprint for objects which you can create based on it'
      ],
      'feedback':
          'Classes act as blueprints that describe how an object should look like. You create ("instantiate") a class by executing it like a function.'
    },
    {
      'questionText': 'What\'s a "property"?',
      'answers': [
        'A variable inside a class',
        'A function inside a class',
        'A class inside a variable'
      ],
      'correctAnswers': ['A variable inside a class'],
      'feedback':
          'You can have class-level variables (which you then can access from anywhere inside the class) - such variables are then called properties. Side note: Functions inside of a class are called "methods".'
    },
    {
      'questionText': 'What\'s a "string"?',
      'answers': [
        'A number value without the decimal places',
        'A number or text value',
        'A text value'
      ],
      'correctAnswers': ['A text value'],
      'feedback': ' It\'s a "string of characters", hence the name.'
    },
    // {
    //   'questionText': [
    //     "int calculateRoundedAge(int birthYear, int currentYear) {",
    //     "return currentYear - birthYear;",
    //     "}",
    //     "print(calculateRoundedAge(1989, 2020));",
    //   ],
    //   'answers': [
    //     'It takes two arguments which are both numbers',
    //     'It takes two arguments which match the return type of the function',
    //     'It returns a number with decomal places',
    //     'It\'s named correctly - describe what it does and uses camelCase',
    //   ],
    //   'correctAnswers': ['It returns a number with decomal places'],
    //   'feedback':
    //       ' this function does NOT return a number with decimal places. It returns an int, which is a number WITHOUT decimal places.'
    // },
  ];

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: Quiz(
            answerIndex: _answerIndex,
            answerQuestions: _answerQuestions,
            quizQuestions: quizQuestions,
          )),
    );
  }
}
