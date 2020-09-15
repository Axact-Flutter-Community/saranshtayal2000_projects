import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Text('Container 1'),
              width: 100.0,
              height: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.yellow,
                    child: Text('Container 2'),
                    height: 100.0,
                    width: 100.0,
                  ),
                  Container(
                    color: Colors.green,
                    child: Text('Container 3'),
                    height: 100.0,
                    width: 100.0,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.blue[800],
              child: Text('Container 4'),
              width: 100.0,
              height: double.infinity,
            )
          ],
        )),
      ),
    );
  }
}
