import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function hander;

  Answer(this.hander);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('Blue'),
        color: Colors.blue[300],
        onPressed: hander,
      ),
    );
  }
}
