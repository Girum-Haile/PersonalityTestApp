import 'package:flutter/material.dart';
import './question.dart';

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
      "What's your favourite animal?",
      "What's your favourite music gener"
    ];
    return MaterialApp(
      home: Scaffold(
          // responsible for creating basic paged design
          appBar: AppBar(
            title: Text('my first app'),
          ),
          body: Column(
            children: [
              Question(question[_questionIndex]),
              RaisedButton(
                child: Text('answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: _answerQuestion,
              ),
            ],
          )),
    );
  }
}
