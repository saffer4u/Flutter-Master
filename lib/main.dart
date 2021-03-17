import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  var _questions = [
    {
      'QuestionText': 'What is your Faverote animal',
      'Answers': ['Dog', 'Elephent', 'Cat', 'Horse'],
    },
    {
      'QuestionText': 'What is your Faverote Color',
      'Answers': ['Black', 'Blue', 'Pink', 'Purpule'],
    },
    {
      'QuestionText': 'What is your Faverote Movie',
      'Answers': ['Iron Man', 'Avenger', 'COCO', 'Sim Sim'],
    }
  ];

  void _ansChosen() {
    setState(() {
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
        body: Container(
          child: Column(
            children: [
              Question(
                _questions[_questionIndex]['QuestionText'],
              ),
              ...(_questions[_questionIndex]['Answers'] as List<String>)
                  .map((answer) {
                return Answers(answer, _ansChosen);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
