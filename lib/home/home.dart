// packages
import 'package:flutter/material.dart';
import '../main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 50.0),
          height: 400.0,
          padding: EdgeInsets.only(left: 5.0),
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 350.0,
                height: 400.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                color: Colors.red,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Quiz()),
                    );
                  }, // handle your onTap here
                  child: Container(height: 200, width: 200),
                ),
              ),
              Container(
                width: 350.0,
                height: 400.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                color: Colors.blue,
              ),
              Container(
                width: 350.0,
                height: 400.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                color: Colors.green,
              ),
              Container(
                width: 350.0,
                height: 400.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                color: Colors.yellow,
              ),
              Container(
                width: 350.0,
                height: 400.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                color: Colors.orange,
              ),
            ],
          )),
    );
  }
}
