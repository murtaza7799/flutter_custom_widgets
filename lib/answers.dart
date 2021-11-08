import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function setHandler;
  final String answerText;
  Answers(this.setHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: () {
          setHandler();
        },
        color: Colors.blue,
        child: Text(answerText),
      ),
    );
  }
}
