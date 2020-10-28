import 'package:flutter/material.dart';
//T
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

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex  + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what is your favorite color?',
      'What is your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter'),
        ),
        body: Column(
          children: [
            Text(question[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer2'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
