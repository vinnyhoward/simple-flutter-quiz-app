import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressed;
  final String answerText;

  Answer(this.onPressed, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
        child: RaisedButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: onPressed,
        ));
  }
}
