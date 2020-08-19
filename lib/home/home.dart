// packages
import 'package:flutter/material.dart';
import './difficultyList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 350,
              child: Column(
                children: [Text('Hello')],
              )),
          DifficultyList()
        ],
      ),
    );
  }
}
