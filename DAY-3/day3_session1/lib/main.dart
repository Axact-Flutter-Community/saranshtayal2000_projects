import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdice = 1;
  int rightdice = 1;
  String winner = "IT'S A TIE";
  void check() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
      if (leftdice > rightdice) {
        winner = "LEFT IS THE WINNER";
      } else if (rightdice > leftdice) {
        winner = "RIGHT IS THE WINNER";
      } else {
        winner = "IT'S A TIE";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('DICE APP'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      check();
                    },
                    child: Image(
                      image: AssetImage('images/dice$leftdice.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      check();
                    },
                    child: Image(
                      image: AssetImage('images/dice$rightdice.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
            Text(
              winner,
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
