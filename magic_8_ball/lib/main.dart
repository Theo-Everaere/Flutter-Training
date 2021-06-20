import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballAnswers = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: Image.asset('images/ball$ballAnswers.png'),
            onPressed: () {
              setState(() {
                ballAnswers = Random().nextInt(5) + 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
