import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'How are you?',
        'answer': [ 'Fine', 'Good', 'Bad', 'Awesome']
      },
      {
        'questionText': 'Where are you?',
        'answer': [ 'Home', 'College', 'Gym']
      },
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: <Widget>[
          Question(question[_questionIndex]['questionText']
      ),
          ...(question[_questionIndex]['answer'] as List<String>)
          .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ),
    );
  }
}