
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
Result(this.again , this.finalresult, {super.key});
final Function() again;
int finalresult;
String endanswer = "عدد الاجابات الصحيحة هي " ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(endanswer + finalresult.toString() ,style: const TextStyle(fontSize: 25 , color: Color.fromARGB(248, 161, 148, 4)),),
         TextButton( onPressed: again, child: const Text(" إعادة المحاولة ؟ "))
        ],
        
      ),
   
    );
  }
}