import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function ansChosen;
  final List<Map<String,Object>> questions;
  final int questionIndex;

  Quiz({this.ansChosen, this.questions, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(
            questions[questionIndex]['QuestionText'],
          ),
          ...(questions[questionIndex]['Answers'] as List<Map<String,Object>>)
              .map((answer) {
            return Answers(answer, ansChosen);
          }).toList(),
        ],
      ),
    );
  }
}
