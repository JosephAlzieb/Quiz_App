import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/question_List.dart';
import 'dart:math';

import 'package:quize_app/quize.dart';
import 'package:quize_app/result.dart';

var que_Index = 0;
var totalScore = 0;
List<Map<String, Object>> match;

void create() {
  final random = new Random();
  match = new List();
  for (int i = 0; i < 5; i++) {
    match.add(question[random.nextInt(10)]);
  }
}

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  void restartApp() {
    setState(() {
      que_Index = 0;
      totalScore = 0;
      match = null;
    });
  }

  void answer_que(score) {
    setState(() {
      que_Index++;
      totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(5.0, 22.0, 5.0, 5.0),
      width: double.maxFinite,
      child: que_Index < match.length
          ? Quize(que_Index, answer_que)
          : Results(restartApp, totalScore),
    );
  }
}
