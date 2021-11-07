// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class question extends StatelessWidget {
  final String questionText;
  question(this.questionText);

  @override
  Widget build(BuildContext context) => Container(
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 40),
        textAlign: TextAlign.center,
      ));
}
