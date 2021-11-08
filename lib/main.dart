import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var index = 1;
  var questions = [
    {
      'questionText': 'What is your favourite city ?',
      'answers': ['lahore', 'multan', 'lodhran', 'dnp'],
    },
    {
      'questionText': 'What is your favourite animal ?',
      'answers': ['dog', 'cat', 'snake', 'lion'],
    },
    {
      'questionText': 'What is your favourite instructor ?',
      'answers': ['max', 'max1', 'max3', 'max4'],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My First App"),
          ),
          body: Column(
            children: [
              Question(
                questions[index]['questionText'],
              ),
              //Answers(simpleQuestions),
              ...(questions[index]['answers'] as List<String>).map((answer) {
                return Answers(simpleQuestions, answer);
              }).toList()
            ],
          )),
    );
  }

  void simpleQuestions() {
    setState(() {
      if (index < questions.length) {
        index = index + 1;
        print(index);
      }
    });
  }
}
