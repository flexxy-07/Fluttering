import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
   @override
  State<StatefulWidget> createState() {
     return _MyAppState();
  }
}


class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;
  void _answerQuestion(){
    setState((){
      if(_questionIndex < 2){
        _questionIndex++;
      }else{
        _questionIndex = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Who\'s the strongest Hashira ?',
      'Who killed UpperMoon 3',
      'Who will fight upperMoon 1 ?',
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('myApp')),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(child: Text("Answer 1"), onPressed: () => _answerQuestion()),
            ElevatedButton(child: Text("Answer 2"), onPressed: () => _answerQuestion()),
            ElevatedButton(child: Text("Answer 3"), onPressed: () => _answerQuestion()),
          ],
        ),
      ),
    );
  }
}
  
