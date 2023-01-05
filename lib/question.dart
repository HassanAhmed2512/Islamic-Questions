// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
 final String question1 ;
   const Question(this.question1);
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Column(
            children:  [
              Text(
                 question1 ,
                style:  const TextStyle(fontSize: 25, color: Color.fromARGB(248, 161, 148, 4),fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              )
            ],
          ),
        );
  }
}
