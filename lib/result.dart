import 'package:flutter/material.dart';
import './shared/styles/styles.dart';

class Result extends StatelessWidget {
  final double finalScore;

  Result({this.finalScore});

  String get resultPhrase {
    var resultText;
    if (finalScore == 100) {
      resultText = 'You passed with flying colors!! Congrats🎉';
    } else if (finalScore > 80) {
      resultText = 'Pretty good score; you\'ve been studying huh?';
    } else if (finalScore > 60) {
      resultText = 'That\'s barely passing... You can do better than that';
    } else if (finalScore > 40) {
      resultText = 'Damn you suck';
    } else if (finalScore > 20) {
      resultText = 'Just quit. You\'re emberassing the both of us';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      resultPhrase,
      style: ScoreStyles,
      textAlign: TextAlign.center,
    ));
  }
}
