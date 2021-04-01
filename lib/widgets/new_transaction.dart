import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTx;
  NewTransaction(this.addNewTx);
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
                onPressed: () => addNewTx(
                      titleController.text,
                      double.parse(amountController.text),
                    ),
                child: Text("Add Transaction")),
          ],
        ),
      ),
    );
  }
}
