import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
          backgroundColor: Colors.indigo[900],
        ),
        body: MyHomePage(),
        backgroundColor: Colors.indigo,
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int ballNumber = 1;

  @override
  void initState() {
    showRandomBall();
    super.initState();
  }

  void showRandomBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      // print(ballNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          showRandomBall();
        },
      ),
    );
  }
}
