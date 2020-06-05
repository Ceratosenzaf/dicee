import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldNum = 2;
  int rdNum = 4;

  void randNums() {
    setState(() {
      ldNum = Random().nextInt(6) + 1;
      rdNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randNums();
              },
              child: Image.asset('images/dice$ldNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randNums();
              },
              child: Image.asset('images/dice$rdNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
