import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note0$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal.shade700, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}