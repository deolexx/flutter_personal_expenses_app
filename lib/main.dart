import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(home: MyHomePage(),title: 'MyApp',);
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Flutter App')),
    body: Center(child: Text("Hello there")),
  );
  }
}