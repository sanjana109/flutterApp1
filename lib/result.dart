import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore;
  final Function retakeQuiz;
  Result(this.resultScore, this.retakeQuiz);

  String get resultPhrase{
    String resultText;
    if(resultScore >= 160)
      resultText = 'You are AWESOME!!!';
    else if(resultScore >= 130)
      resultText = 'You are pretty SMART!';
    else
      resultText = 'You are STRANGE?!';

    return(resultText);
  }

  @override
  Widget build(BuildContext context){
    return Center(
            child : Column(
              children: [
                Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.orange[900],
                    textStyle: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  child: Text('Retake Quiz'),
                  onPressed:retakeQuiz,
                ),
              ],
            ),
    );
  }
}