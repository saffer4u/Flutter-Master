import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var _questions = [
    {
      'QuestionText': 'What is your Faverote animal',
      'Answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Elephent', 'score': 4},
        {'text': 'Cat', 'score': 3},
        {'text': 'Horse', 'score': 7},
      ],
    },
    {
      'QuestionText': 'What is your Faverote Color',
      'Answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Blue', 'score': 8},
        {'text': 'Pink', 'score': 9},
        {'text': 'Purpule', 'score': 2},
      ],
    },
    {
      'QuestionText': 'What is your Faverote Movie',
      'Answers': [
        {'text': 'Iron Man', 'score': 2},
        {'text': 'Avenger', 'score': 6},
        {'text': 'COCO', 'score': 3},
        {'text': 'Sim Sim', 'score': 8},
      ],
    }
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _ansChosen(int score) {
    setState(() {
      _totalScore += score;
      print(_totalScore);
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                ansChosen: _ansChosen,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
