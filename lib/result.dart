import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetQuiz;



  Result(this.finalScore,this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your Score is..."),
          Text(
            finalScore.toString(),
            style: TextStyle(fontSize: 80),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text("Reset Quiz"),
          ),
        ],
      ),
    );
  }
}
