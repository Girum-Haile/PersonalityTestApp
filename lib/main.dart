import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}
class MyAppState extends State<MyApp>{

  var questionIndex = 0;

  void answerQuestion(){
    setState(() {
       questionIndex = questionIndex + 1;
      
    });
   
    print(questionIndex); 
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "What's your favourite animal?",
      "What's your favourite music gener"
    ];
    return MaterialApp(
      home: Scaffold( // responsible for creating basic paged design
          appBar: AppBar(
            title: Text('my first app'),
          ),
          body: Column(
            children: [
              Text(question[questionIndex]),
              RaisedButton(
                child: Text('answer 1'),
                onPressed:answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
