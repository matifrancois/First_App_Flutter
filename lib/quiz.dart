import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        //"as list of strings" es necesario para indicarle a visual que sabes
        //de lo que estas hablando y que no te tire error (el no sabe de que hablas)
        //.map te permite recorrer todos los elementos de la lista y para c/u
        //realizar una funcion determinada.
        //los 3 puntitos lo que hacen es que toman una lista y sacan los valores
        //de esa lista y crean una nueva lista, esto sirve para por ejemplo
        //evitar problemas con tener lista de listas.
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          //tengo que crear una funcion anonymus para poder pasarle parametros a answerQuestion en main.
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
        //.toList() indica que lo queres convertir a lista.
      ],
    );
  }
}
