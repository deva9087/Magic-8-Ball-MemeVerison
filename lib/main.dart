import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
          child: Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  String imageFormat = 'png';

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(10) + 1;
    });
    if (ballNumber == 2) {
      setState(() {
        imageFormat = 'gif';
      });
    } else {
      setState(() {
        imageFormat = 'png';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: changeBall,
        child: Image.asset('images/ball$ballNumber.$imageFormat'),
      ),
    );
  }
}
