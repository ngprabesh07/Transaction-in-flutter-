import 'package:flutter/material.dart';
import 'package:learn_flutter/models/Transaction.dart';
import 'package:learn_flutter/widgets/new_transaction.dart';
import 'package:learn_flutter/widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'Jorden shoes',
      price: 4570.98,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'GoldStar Shoes',
      price: 1457.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Converse Shoes',
      price: 757.99,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txtitle, double txprice) {
    final newtx = Transaction(
      title: txtitle,
      price: txprice,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransaction.add(newtx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
