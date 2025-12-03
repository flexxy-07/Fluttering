import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {super.key});

  String get resultPhrase {
    if (resultScore == 3) return 'Woooohooo..Great!!';
    if (resultScore == 2) return 'So Close..';
    if (resultScore == 1) return 'Ooops..Not GooD';
    if (resultScore == 0) return 'Try Again you stupidAss :)';
    return 'Please Attempt the Quiz';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Score : $resultScore',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 18, color: Colors.greenAccent),
            ),
          ),
        ],
      ),
    );
  }
}
