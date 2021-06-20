import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 8},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Dog', 'score': 6},
        {'text': 'Elephant', 'score': 9},
        {'text': 'Lion', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite saga ?',
      'answers': [
        {'text': 'The Lord of the Rings', 'score': 2},
        {'text': 'Harry Potter', 'score': 7},
        {'text': 'Hunger Games', 'score': 4},
        {'text': 'Pirates of the Caribbean', 'score': 2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions !');
    } else {
      print('No more questions !');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('MyQuizApp'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
