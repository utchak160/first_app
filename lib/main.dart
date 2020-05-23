import 'package:flutter/material.dart';
import 'package:my_first_app/quiz.dart';

import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;

  var _question = [
    {
      'questionText': 'How are you?',
      'answer': [{'text': 'Fine', 'score': 30}, {'text': 'Good', 'score': 20}, {'text': 'Bad', 'score': 10}, {'text': 'Awesome', 'score': 100}]
    },
    {
      'questionText': 'Where are you?',
      'answer': [{'text': 'Home', 'score': 30}, {'text': 'College', 'score': 20}, {'text': 'Gym', 'score': 10}]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore +=score;

    if (_questionIndex < _question.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
    print(_questionIndex);
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _question,)
            : Result(resultScore: _totalScore, resetHandler: _resetQuiz),
      ),
    );
  }
}
