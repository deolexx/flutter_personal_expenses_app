import 'package:flutter/material.dart';
import './transaction.dart';

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

class MyHomePage extends StatelessWidget {final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'Morning cofee', amount: 45.0, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Shoes', amount: 155.50, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter App')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            Column(
              children: transactions
                  .map((tx) => Card(
                        child: Row(children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                              ),
                              child: Text(tx.amount.toString())),
                          Column(
                            children: [
                              Text(tx.title),
                              Text(tx.date.toString())
                            ],
                          )
                        ]),
                      ))
                  .toList(),
            ),
          ]),
    );
  }
}
