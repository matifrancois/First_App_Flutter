import 'package:flutter/material.dart';
import 'question.dart';

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
            //Primer forma de conectar accion con boton
            RaisedButton(
              child: Text('Blue'),
              onPressed: _answerQuestion,
            ),
            //Segunda forma de conectar accion con boton
            RaisedButton(
              child: Text('Red'),
              onPressed: () => print('Red chosen'),
            ),
            //Tercer forma de conectar accion con boton
            RaisedButton(
              child: Text('Green'),
              onPressed: () {
                //...
                print('Green chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
} //class myApp
