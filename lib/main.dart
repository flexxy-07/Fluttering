import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            Text('The questions are:'),
            RaisedButton(child: Text("Answer 1"), onPressed: null),
            RaisedButton(child: Text("Answer 2"), onPressed: null),
            RaisedButton(child: Text("Answer 3"), onPressed: null),
          ],
        ),
      ),
    );
  }
}
