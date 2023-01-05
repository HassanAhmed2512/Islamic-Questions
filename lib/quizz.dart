
import 'package:flutter/material.dart';
import 'package:quizzapp/answer.dart';
import 'package:quizzapp/question.dart';

class Quizz extends StatelessWidget {
  const Quizz( this.question,  this.indexofquestion,  this.nextquestion, {super.key});

final List<Map<String, Object>> question;
final int indexofquestion;
final Function(int s) nextquestion;



  @override
  Widget build(BuildContext context) {
    return Column(
            children:[
             Question(question[indexofquestion]['question'].toString()),
            ...(question[indexofquestion]['answer'] as List<Map<String, Object>>).map((valee)
            {
              return Answer(valee['text'].toString(),(() => (nextquestion(int.parse(valee['score'].toString())))));
              
              } ),
            ]
          );
  }
}