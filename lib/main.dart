import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': "What's your favourite animal?",
      'answer': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 6},
        {'text': 'rabbit', 'score': 4},
        {'text': 'sheep', 'score': 2}
      ]
    },
    {
      'questionText': "What's your favourite music gener",
      'answer': [
        {'text': 'pop', 'score': 10},
        {'text': 'country', 'score': 6},
        {'text': 'R&B', 'score': 4},
        {'text': 'jazz', 'score': 2}
      ]
    },
    {
      'questionText': "What's your favourite food?",
      'answer': [
        {'text': 'pasta', 'score': 10},
        {'text': 'pizza', 'score': 6},
        {'text': 'burger', 'score': 4},
        {'text': 'bread', 'score': 2}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore=0;
  
  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
    _totalScore=0;
      
    });
    
  }

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      // a function that forces flutter to re-render UI
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _question.length) {
      print("we have more question");
    } else {
      print("we have no more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // responsible for creating basic paged design
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _question,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
