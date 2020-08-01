import 'package:flutter/material.dart';

import './question.dart';

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
      if (_answerIndex <= 1) {
        _answerIndex = _answerIndex + 1;
      }
    });
    print('current answer index - ${_answerIndex}');
  }

  var quizQuestions = [
    'What\'s your favorite anime',
    'What\'s your favorite video game',
    'If you could have any super power; what would you want?'
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
              Question(quizQuestions[_answerIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestions,
              ),
              RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () => print('Stupid ass function expression')),
              RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () =>
                      print('Another stupid ass function expression')),
              RaisedButton(
                  child: Text('Answer 4'),
                  onPressed: () =>
                      print('Yet another stupid ass function expression')),
            ],
          )),
    );
  }
}
