import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  TransactionList(this.transactions, this.deleteTx);

  final List<Transaction> transactions;

  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? LayoutBuilder(builder: (context, constraints) =>     Column(
      children: [
        Text(
          'No transactions added yet!',
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: constraints.maxHeight * 0.6,
          child: Image.asset(
            'assets/images/waiting.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    )
      ,)
        : ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: ListTile(
                  title: Text(transactions[index].title),
                  subtitle: Text(
                      DateFormat.yMMMMd().format(transactions[index].date)),
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    radius: 40,
                    child: FittedBox(
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text('\$${transactions[index].amount}')),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () => deleteTx(transactions[index].id),
                    icon: Icon(Icons.delete),
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              );
            },
            itemCount: transactions.length,
          );
  }
}
