import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue.shade900,
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: BallPage(),
    ),
  );
}

class BallPage extends StatefulWidget {
  final int number = 1;

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () => {},
          child: Image.asset('images/ball${widget.number}.png'),
        ),
      ),
    );
  }
}
