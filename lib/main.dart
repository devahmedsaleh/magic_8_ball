import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(Magic8Ball());

class Magic8Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue.shade900,
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          centerTitle: true,
        ),
        body: SafeArea(child: Ball()),
      ),
    );
  }
}

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
