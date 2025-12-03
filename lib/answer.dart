import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;
  const Answer(this.selectHandler, this.answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
      
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue
          ),
        child: Text(answer,
        style: TextStyle(color : Colors.white),
        ),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
