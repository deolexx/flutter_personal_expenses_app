import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({Key? key, required this.addTx}) : super(key: key);

  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    if(enteredTitle.isEmpty|| enteredAmount <=0){
      return;
    }

    addTx(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                controller: titleController,
                onSubmitted: (_) => submitData(),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Amount'),
                controller: amountController,
                onSubmitted: (_) => submitData(),
              ),
              ElevatedButton(
                onPressed: submitData,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple)),
                child: const Text('Add Transaction'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
