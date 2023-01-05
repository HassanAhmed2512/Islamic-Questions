import 'package:flutter/material.dart';
import 'main.dart';



class Answer extends StatelessWidget {
 Answer(this.answertext, this.x);
final String answertext ;
 final  Function() x;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  ElevatedButton(
                  onPressed: x,
                  child: Text(
                    answertext,
                    style: TextStyle(fontSize: 20 ,  color: isSwitched == false ? Colors.white : Colors.black,),
                  )),
    );
  }
}