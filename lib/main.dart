import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // a function that forces flutter to re-render UI
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': "What's your favourite animal?",
        'answer': ['dog', 'cat', 'rabbit', 'sheep']
      },
      {
        'questionText': "What's your favourite music gener",
        'answer': ['pop', 'country', 'R&B', 'jazz']
      },
      {
        'questionText': "What's your favourite food?",
        'answer': ['pasta', 'pizza', 'burger', 'bread']
      }
    ];
    return MaterialApp(
      home: Scaffold(
          // responsible for creating basic paged design
          appBar: AppBar(
            title: Text('my first app'),
          ),
          body: Column(
            children: [
              Question(
                question[_questionIndex]['questionText'],
              ),
             ...(question[_questionIndex]['answer'] as List<String>).map((answer){
               return Answer(_answerQuestion,answer);
             }).toList()
            ],
          )),
    );
  }
}
