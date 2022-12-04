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
        ? Column(
            children: [
              Text(
                'No transactions added yet!',
                style: Theme.of(context).appBarTheme.toolbarTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: Image.asset(
                  'assets/images/waiting.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
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
                    radius: 40,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('\$${transactions[index].amount}')),
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
