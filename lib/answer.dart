import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerHandler;

  Answer(this.selectHandler, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerHandler),
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}
