import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'game.dart';


class Results extends StatelessWidget {
  final Function restartApp;
  final int resultScore;

  Results(this.restartApp, this.resultScore);

  /*String get resultPhrase {
    String resultText;
    if (resultScore > 50)
      resultText = "Perfect";
    else {
      resultText = "";
    }

    return resultText;
  }

   */

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Done\nYou got $resultScore/50",
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "assets/img/Forsch1.jpg",
              height: 300.0,
            ),
            const SizedBox(
              height: 60.0,
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                minWidth: 200.0,
                color: Colors.green,
                onPressed: () {
                  restartApp();
                  create();
                  },
                child: const Text(
                  "Play again",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
