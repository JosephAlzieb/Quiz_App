import 'package:flutter/material.dart';

import 'game.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  height: 20.0,
                ),
                Image.asset('assets/img/biologie.jpg'),
                SizedBox(
                  width: double.maxFinite,
                  height: 60.0,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  minWidth: 100.0,
                  color: Colors.green,
                  onPressed: () {
                    create();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Game()));
                  },
                  child: Text(
                    "let's get started",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
