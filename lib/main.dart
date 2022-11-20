import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: 'MyApp',
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter App')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        Container(width: double.infinity,child:  Card(
          elevation: 5,
          child: Container(
            child: Text("Chart"),
          )),
        ),

        Card(
          color: Colors.blue,
          elevation: 5,
          child: Container(
            child: Text("List of Tx"),
          ),
        ),
      ]),
    );
  }
}
