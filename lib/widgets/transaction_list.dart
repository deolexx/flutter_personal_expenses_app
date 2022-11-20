import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  TransactionList({Key? key}) : super(key: key);
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'Morning cofee', amount: 45.0, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Shoes', amount: 155.50, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: _userTransaction
            .map((tx) => Card(
                  child: Row(children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2),
                        ),
                        child: Text(
                          '\$${tx.amount}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ]),
                ))
            .toList(),
      ),
    );
  }
}
