import 'package:flutter/material.dart';
import 'package:flutter_app/result.dart';

import './quiz.dart';
import './result.dart';
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
  

  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': '10'},
        {'text': 'red', 'score': '5'},
        {'text': 'green', 'score': '4'},
        {'text': 'white', 'score': '1'}
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': ['tiger', 'lion', 'girafe', 'bull'],
    },
    {
      'questionText': 'who\'s your favouter person',
      'answers': ['me', 'me', 'me', 'me'],
    },
  ];
  var _questionIndex = 0;
var _totalScore=0;
  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("we have more question!!");
    } else {
      print("no more!!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
