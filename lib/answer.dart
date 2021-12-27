import 'package:flutter/material.dart';
import 'game.dart';

class Answer extends StatelessWidget {
  final String answer_Text;
  final Function answer;

  Answer(this.answer_Text, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answer_Text,
          style: TextStyle(fontSize: 25),
        ),
        onPressed: answer,
        color: Colors.green,
        textColor: Colors.white,
      ),
    );
  }
}
