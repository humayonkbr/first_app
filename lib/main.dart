import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class kabirApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello world',
      home: Home(),
    );
  }
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello world',

        home: Home(),

    );


  }
  }


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body:Center(
      child:Text(
        'Hello world',
        textAlign: TextAlign.center,
        maxLines: 3,
        style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w300,
            backgroundColor: Colors.blue,
            color: Colors.red,
            overflow: TextOverflow.visible),
      ),
      )
    );
  }
}
