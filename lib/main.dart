import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    var quizQuestions = [
      'What\'s your favorite anime',
      'What\'s your favorite video game'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: Column(
            children: <Widget>[
              Text('Questions'),
              RaisedButton(child: Text('Asswer 1'), onPressed: null),
              RaisedButton(child: Text('Asswer 2'), onPressed: null),
              RaisedButton(child: Text('Asswer 3'), onPressed: null),
            ],
          )),
    );
  }
}
