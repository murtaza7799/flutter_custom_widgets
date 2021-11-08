// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final Object? questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) => Container(
      width: double.infinity,
      child: Text(
        questionText.toString(),
        style: TextStyle(fontSize: 40),
        textAlign: TextAlign.center,
      ));
}
