import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactionList;

  const TransactionList(this._userTransactionList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactionList.map((trans) {
        return Container(
          width: double.infinity,
          child: Card(
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      )),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    trans.amount.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      trans.title,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat().add_yMd().format(trans.date),
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
