import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What is your favorite color ?",
      "answer": [
        {"text": "Blue", "score": 20},
        {"text": "Red", "score": 15},
        {"text": "Green", "score": 10},
        {"text": "Black", "score": 5}
      ]
    },
    {
      "questionText": "What is your favorite pet ?",
      "answer": [
        {"text": "Dog", "score": 15},
        {"text": "Rabbit", "score": 10},
        {"text": "Cat", "score": 20},
        {"text": "Bird", "score": 5}
      ]
    },
    {
      "questionText": "What is your favorite food ?",
      "answer": [
        {"text": "Pizza", "score": 10},
        {"text": "Hamburger", "score": 20},
        {"text": "Noodle", "score": 15},
        {"text": "Meatball", "score": 5}
      ]
    },
    {
      "questionText": "What is your favorite country ?",
      "answer": [
        {"text": "France", "score": 20},
        {"text": "USA", "score": 15},
        {"text": "Russia", "score": 10},
        {"text": "Japan", "score": 5}
      ]
    },
    {
      "questionText": "What is your favorite sport ?",
      "answer": [
        {"text": "Football", "score": 10},
        {"text": "Golf", "score": 15},
        {"text": "Basketball", "score": 20},
        {"text": "Bowling", "score": 5}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    print(_totalScore);

    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var quizLength = (_questionIndex < _questions.length);
    var quizWidget = Quiz(_questions, _answerQuestion, _questionIndex);

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: (quizLength) ? quizWidget : Result(_totalScore, _resetQuiz),
    ));
  }
}
