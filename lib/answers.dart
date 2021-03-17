import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String ansText;
  final Function ansChosen;

  Answers(this.ansText, this.ansChosen);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(ansText),
        onPressed: ansChosen,
      ),
    );
  }
}
