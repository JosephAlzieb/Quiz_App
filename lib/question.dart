import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String ques_Text;

  Question(this.ques_Text);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(2.0),
        child: Text(ques_Text,
            style: const TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold, decoration: TextDecoration.none
                ),
            textAlign: TextAlign.center));
  }
}
