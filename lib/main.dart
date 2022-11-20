import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses_app/widgets/new_transaction.dart';
import 'package:flutter_personal_expenses_app/widgets/transaction_list.dart';

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
      appBar: AppBar(title: const Text('Flutter App')),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                  elevation: 5,
                  child: Container(
                    child: Text("Chart"),
                  )),
            ),
            NewTransaction(),
            TransactionList()
          ]),
    );
  }
}
