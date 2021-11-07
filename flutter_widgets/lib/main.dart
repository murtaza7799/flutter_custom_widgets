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
  var index = 0;
  var text = ["this is my text1", "this is my text2"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My First App"),
          ),
          body: Column(
            children: [
              question(text[index]),
              RaisedButton(
                  onPressed: () {
                    simpleQuestions();
                  },
                  child: const Text("Button")),
              RaisedButton(onPressed: () {}, child: const Text("Button")),
              RaisedButton(onPressed: () {}, child: const Text("Button")),
              RaisedButton(onPressed: () {}, child: const Text("Button")),
              RaisedButton(onPressed: () {}, child: const Text("Button")),
              answers(),
            ],
          )),
    );
  }

  void simpleQuestions() {
    setState(() {
      index = index + 1;
    });
    print(index);
  }
}
