import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'question': 'Who\'s the strongest Hashira ?',
        'answers': [
          {'text': 'Uzui', 'score': 0},
          {'text': 'Rengoku', 'score': 0},
          {'text': 'Gyomei', 'score': 1},
          {'text': 'Mushiro', 'score': 0},
        ],
      },
      {
        'question': 'Who killed UpperMoon 3',
        'answers': [
          {'text': 'Aakaza', 'score': 1},
          {'text': 'Tanjiro', 'score': 0},
          {'text': 'Giyu', 'score': 0},
          {'text': 'Muzan', 'score': 0},
        ],
      },
      {
        'question': 'Who will fight upperMoon 1?',
        'answers': [
          {'text': 'Tanjiro', 'score': 0},
          {'text': 'Gyomei', 'score': 0},
          {'text': 'Sanemi', 'score': 0},
          {'text': 'Mushiro', 'score': 1},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hashira Quiz')),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
