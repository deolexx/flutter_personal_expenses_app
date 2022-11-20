import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
   NewTransaction({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(child:             Card(
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
    ),);
  }
}