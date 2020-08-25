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
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dolphin', 'Parrot', 'Dog']
    },
    {
      'questionText': 'What\'s your favorite day?',
      'answers': ['Monday', 'Friday', 'Saturday', 'Sunday']
    },
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
            Question(
              _questions[_questionIndex]['questionText'],
            ),
            //"as list of strings" es necesario para indicarle a visual que sabes
            //de lo que estas hablando y que no te tire error (el no sabe de que hablas)
            //.map te permite recorrer todos los elementos de la lista y para c/u
            //realizar una funcion determinada.
            //los 3 puntitos lo que hacen es que toman una lista y sacan los valores
            //de esa lista y crean una nueva lista, esto sirve para por ejemplo
            //evitar problemas con tener lista de listas.
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
            //.toList() indica que lo queres convertir a lista.
          ],
        ),
      ),
    );
  }
} //class myApp
