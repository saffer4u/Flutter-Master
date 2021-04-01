import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactions;

  TransactionList(this._transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _transactions
          .map(
            (tx) => Card(
              child: ListTile(
                title: Text(tx.title),
                subtitle: Text(DateFormat.yMMMMd().format(tx.date)),
                leading: CircleAvatar(
                  radius: 40,
                  child: Text(tx.amount.toString()),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
