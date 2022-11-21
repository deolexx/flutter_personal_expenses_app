import 'package:flutter/material.dart';
import '../widgets/user_transactions.dart';

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
      appBar: AppBar(title: const Text('Flutter App'),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.add))
        ],
      ),
      body:
        SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    child: Container(
                      child: const Text("Chart"),
                    ),
                  ),
                ),
                UserTransactions()
              ]),
        ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => {},),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
