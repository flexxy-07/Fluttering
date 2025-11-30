import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'question': 'Who\'s the strongest Hashira ?',
        'answers': ['Uzui', 'Rengoku', 'Gyomei', 'Mushiro'],
      },
      {
        'question': 'Who killed UpperMoon 3',
        'answers': ['Aakaza', 'Tanjiro', 'Giyu', 'Muzan'],
      },
      {
        'question': 'Who will fight upperMoon 1?',
        'answers': ['Tanjiro', 'Gyomei', 'Sanemi', 'Mushiro'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hashira Quiz')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
