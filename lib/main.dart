import 'package:flutter/material.dart';

import 'package:magic_8_ball/ball.dart';

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
