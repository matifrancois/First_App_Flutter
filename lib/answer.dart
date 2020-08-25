import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function hander;
  final String answerText;

  Answer(this.hander, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue[300],
        textColor: Colors.white,
        onPressed: hander,
      ),
    );
  }
}
