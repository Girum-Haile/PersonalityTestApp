import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = "good";
    } else if (resultScore <= 12) {
      resultText = "better";
    } else {
      resultText = "bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          textColor: Colors.blue,
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
