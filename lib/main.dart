import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(Magic8Ball());
}

class Magic8Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue.shade900,
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () => setState(() => number = Random().nextInt(5) + 1),
          child: Image.asset('images/ball$number.png'),
        ),
      ),
    );
  }
}
