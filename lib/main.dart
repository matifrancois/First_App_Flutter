import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];
  //Metodo de la clase
  void _answerQuestion() {
    //setState esta ahi para que sea reactivo es decir que se actualice la
    //visualizacion de la app.
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Blue chosen!');
  }

  //Necesario para flutter
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
} //class myApp
