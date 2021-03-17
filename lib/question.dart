import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String textHandler;

  Question(this.textHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        textHandler,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
