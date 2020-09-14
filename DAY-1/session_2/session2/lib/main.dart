import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Session 2",
      home: Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(
          title: Text('Second session App'),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Image(
            fit: BoxFit.fitHeight,
            image: AssetImage('images/eclipse.webp'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 100.0,
            child: Row(
              children: <Widget>[
                Text(
                  'BOTTOM OF SESSION 2',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30.0),
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Icon(
                  Icons.add_box,
                  color: Colors.white,
                ),
              ],
            ),
            color: Colors.red[900],
          ),
        ),
        persistentFooterButtons: <Widget>[
          IconButton(icon: Icon(Icons.account_box), onPressed: null),
          IconButton(icon: Icon(Icons.account_circle), onPressed: null)
        ],
      ),
    );
  }
}
