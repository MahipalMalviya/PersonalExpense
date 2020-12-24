import 'package:flutter/material.dart';
import '../model/transaction.dart';
import '../widgets/transaction_list.dart';
import '../widgets/textinput_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactionList = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 3799, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Bomber Jacket', amount: 899, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInputTransaction(),
        TransactionList(_userTransactionList),
      ],
    );
  }
}
