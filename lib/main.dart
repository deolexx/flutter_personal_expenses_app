import 'package:flutter/material.dart';
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
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: const InputDecoration(labelText: 'Title'),
                      controller: titleController,
                    ),
                    TextField(
                      decoration: const InputDecoration(labelText: 'Amount'),
                      controller: amountController,
                    ),
                    ElevatedButton(
                      onPressed: () => {
                        print(titleController.text),
                        print(amountController.text)
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple)),
                      child: const Text('Add Transaction'),
                    )
                  ],
                ),
              ),
            ),
            TransactionList()
          ]),
    );
  }
}
