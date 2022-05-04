import "package:flutter/material.dart";

import "./question.dart";
import "answer.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        "text": "What's your favorite color?",
        "answers": ["Black", "Red", "Green", "White"]
      },
      {
        "text": "What's your favorite animal?",
        "answers": ["Dog", "Cat", "Giraffe", "Anteater"]
      },
    ];

    void _buttonHandler() {
      print("Button pressed!: $_questionIndex");
      setState(() {
        // ignore: todo
        // TODO Temporary
        _questionIndex = (_questionIndex + 1) % 2;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App Bar"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]["text"]),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) => Answer(answer, _buttonHandler))
                .toList()
          ],
        ),
      ),
    );
  }
}
