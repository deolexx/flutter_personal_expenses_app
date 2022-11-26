import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses_app/widgets/transaction_list.dart';
import '../widgets/new_transaction.dart';
import 'models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: 'Personal Expenses',
      theme: ThemeData(
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Colors.teal,
              onPrimary: Colors.white,
              secondary: Colors.lightBlue,
              onSecondary: Colors.teal,
              error: Colors.deepOrange,
              onError: Colors.pink,
              background: Colors.brown,
              onBackground: Colors.brown,
              surface: Colors.brown,
              onSurface: Colors.brown)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'Morning cofee', amount: 45.0, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Shoes', amount: 155.50, date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (builderContext) {
        return NewTransaction(addTx: _addNewTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Expenses'),
        actions: [
          IconButton(
              onPressed: () => _startAddNewTransaction(context),
              icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
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
              TransactionList(_userTransactions)
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
