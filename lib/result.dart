import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result({this.resultScore, this.resetHandler});

  String get total {
    String message;
    if (resultScore > 40) {
      message = 'You are awesome! ;)';
    } else {
      message = 'You need to work hard :(';
    }
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          total,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart quiz',
          ),
          textColor: Colors.blue,
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
