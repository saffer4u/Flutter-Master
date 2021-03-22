import 'package:flutter/material.dart';
import 'package:revision/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Transaction> _transactions = [
      Transaction(
        amount: 22,
        date: DateTime.now(),
        id: "id1",
        title: "Shoes",
      ),
      Transaction(
        amount: 55,
        date: DateTime.now(),
        id: "id2",
        title: "Hat",
      ),
      Transaction(
        amount: 173,
        date: DateTime.now(),
        id: "id3",
        title: "Phone",
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Expences"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Text("CHART!!"),
            ),
            Column(
              children: _transactions
                  .map(
                    (tx) => Card(
                      child: ListTile(
                        title: Text(tx.title),
                        subtitle: Text(tx.date.toString()),
                        leading: CircleAvatar(
                          radius: 40,
                          child: Text(tx.amount.toString()),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
