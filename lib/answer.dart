import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class Answer extends StatelessWidget{
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  
  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple[200],
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontStyle: FontStyle.italic
          ),
        ),
        child: Text(answerText),

        onPressed: selectHandler,),
    );
  }
}