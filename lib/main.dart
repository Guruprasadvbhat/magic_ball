import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('ASK YOUR QUESTION')),
          backgroundColor: Colors.lightBlue,
        ),
        backgroundColor: Colors.black,
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ball = Random().nextInt(5) + 1;
                });

              },
              child: Image.asset('images/ball$ball.png'),
            ),
          ),
        ],
      ),
    );
  }
}
