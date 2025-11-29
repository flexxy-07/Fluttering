import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

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
      if (_questionIndex < 2) {
        _questionIndex++;
      } else {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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
        'answers': ['Tanjiro', 'Gyomie', 'SnakeHashira', 'Mitsuri'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('myApp')),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['question'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList(),
          ],
        ),
      ),
    );
  }
}
