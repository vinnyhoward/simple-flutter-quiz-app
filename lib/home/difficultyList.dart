import 'package:flutter/material.dart';
import '../shared/styles/styles.dart';

class DifficultyList extends StatelessWidget {
  DifficultyList();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 50.0),
        height: 400.0,
        padding: EdgeInsets.only(left: 10.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 350.0,
              height: 400.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Easy',
                    style: CardHeader,
                  ),
                ],
              ),
            ),
            Container(
              width: 350.0,
              height: 400.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Container(
              width: 350.0,
              height: 400.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Container(
              width: 350.0,
              height: 400.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Container(
              width: 350.0,
              height: 400.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ));
  }
}

// child: InkWell(
//   onTap: () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => Quiz()),
//     );
//   },
//   child: Container(height: 200, width: 200),
// ),
