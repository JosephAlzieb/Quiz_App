import 'package:flutter/material.dart';
import 'package:quize_app/question.dart';

import 'answer.dart';
import 'game.dart';


class Quize extends StatelessWidget {
  final int que_Index;
  final Function answer_que;

  Quize(this.que_Index, this.answer_que);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          AppBar(
            centerTitle: true,
            primary: false,
            title: const Text(
              "Biologie Uebung",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
            toolbarHeight: 40.0,
          ),
          Question(match[que_Index]["question_Text"]),
          ...(match[que_Index]["answer_Text"] as List<Map<String, Object>>)
              .map((x) {
            return Answer(x["Text"], () => answer_que(x["Score"]));
          }).toList(),
        ],
      ),
    ));
  }
}
