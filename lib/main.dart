import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  static const _questions = [
      {
        'questionText': 'What is your favorite colour ?',
        'answers' : [
          {'text': 'Blue', 'score':10},
          {'text': 'Green','score':6},
          {'text': 'Red','score':5},
          {'text': 'Yellow','score':2},
        ]
      },
      {
        'questionText' : 'What is your Spirit animal ?',
        'answers' : [
          {'text': 'Horse', 'score':25},
          {'text': 'Dog','score':40},
          {'text': 'Lion','score':20},
          {'text': 'Elephant','score':30},
        ]
      },
      {
        'questionText' : 'What is your hobby?',
        'answers' : [
          {'text': 'Dancing', 'score':130},
          {'text': 'Reading','score':150},
          {'text': 'Surfing the Internet','score':100},
          {'text': 'Playing','score':120},
        ]
      }
    ];
  var _questionIndex = 0;  
  var _totalScore = 0;

  void _resetQuiz(){
    setState((){
      _questionIndex = 0;  
      _totalScore = 0;
    });
  }
  
  void _answerQuestion(int score){
    _totalScore += score;
    setState((){
      _questionIndex = _questionIndex + 1;
    }); 
    if(_questionIndex < _questions.length){
      print('We have more questions');
    }
    else
      print('No more questions');
  }
  
  @override
  Widget build(BuildContext context){
    
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'), 
        ), 
        body: (_questionIndex < _questions.length) 
        ? Quiz(_answerQuestion, _questions, _questionIndex)
        : Result(_totalScore,_resetQuiz),
      ),
    );

  }

}