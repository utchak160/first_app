import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionName;

  Question(this.questionName);
  @override
  Widget build(BuildContext context) {
    return Text(questionName);
  }
}
