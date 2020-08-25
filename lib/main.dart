import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

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
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Snake', 'score': 10},
        {'text': 'Dolphin', 'score': 3},
        {'text': 'Parrot', 'score': 6},
        {'text': 'Dog', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite day?',
      'answers': [
        {'text': 'Monday', 'score': 10},
        {'text': 'Friday', 'score': 3},
        {'text': 'Saturday', 'score': 4},
        {'text': 'Sunday', 'score': 1}
      ]
    },
  ];

  //Metodo de la clase
  void _answerQuestion(int score) {
    //setState esta ahi para que sea reactivo es decir que se actualice la
    //visualizacion de la app.
    _totalScore += score;
    if (_questionIndex < _questions.length - 1) {
      print('chosen!');
    } else {
      print('We dont have more questions for you');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  //Necesario para flutter
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        //aqui hay una expresion ternaria que funciona como un if, un if ahi no lo
        // podria meter pero de ultima un flag en un if aparte podria funcionar.
        body: _questionIndex < _questions.length
            ?
            //caso verdadero:
            Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            :
            //caso falso:
            Result(_totalScore, _resetQuiz),
      ),
    );
  }
} //class myApp
