import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transactions_list.dart';


class UserTransaction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UserTransactionState();
  }
}

class UserTransactionState extends State<UserTransaction> {

  final List<Transaction> transactions = [
    Transaction(id: "t1",title: "Shopping",amount: 100.0,date: DateTime.now()),
    Transaction(id: "t2",title: "Learning",amount: 500.0,date: DateTime.now()),
    Transaction(id: "t3",title: "Phone",amount: 250.0,date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        NewTransaction(),
        TransactionsList(),
      ],
    );
  }

}