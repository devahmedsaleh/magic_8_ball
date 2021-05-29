import 'dart:math';
import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => setState(() => number = Random().nextInt(5) + 1),
        child: Image.asset('images/ball$number.png'),
      ),
    );
  }
}
