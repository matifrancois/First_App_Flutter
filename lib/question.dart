import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final le dice a Flutter che, este argumento no se va a
  //modificar despues de que se construya el objeto de esta clase.
  final String questionText;

  //El constructor asigna el parametro a la variable.
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
