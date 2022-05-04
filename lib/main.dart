import "package:flutter/material.dart";

import "./question.dart";

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
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?"
    ];

    void _buttonHandler() {
      print("Button pressed!: $_questionIndex");
      setState(() {
        _questionIndex++;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App Bar"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(child: Text("Answer 1"), onPressed: _buttonHandler),
            RaisedButton(child: Text("Answer 2"), onPressed: _buttonHandler),
            RaisedButton(child: Text("Answer 3"), onPressed: _buttonHandler),
          ],
        ),
      ),
    );
  }
}
