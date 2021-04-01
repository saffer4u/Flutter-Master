import 'package:flutter/material.dart';

import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
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

  void _addNewTransacton(String txTitle, double txAmount) {
    final newTrans = Transaction(
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString(),
        title: txTitle);

    setState(() {
      _userTransactions.add(newTrans);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransacton),
        TransactionList(_userTransactions),
      ],
    );
  }
}
