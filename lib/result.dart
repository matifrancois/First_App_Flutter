import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are very normal 🙄';
    } else if (resultScore <= 12) {
      resultText = 'You are normal 😐';
    } else if (resultScore <= 16) {
      resultText = 'You are quite strange 🤔';
    } else if (resultScore <= 20) {
      resultText = 'You are strange 🤨';
    } else if (resultScore <= 30) {
      resultText = 'You are ... very strange 😲';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
