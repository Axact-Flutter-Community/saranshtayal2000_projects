import 'package:flutter/material.dart';

//main is starting point of the app
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Session - 1'),
        ),
        body: Center(
          child: Text(
            'Saransh Tayal',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}