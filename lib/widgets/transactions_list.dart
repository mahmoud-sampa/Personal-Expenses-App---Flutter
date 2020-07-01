import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';



class TransactionsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransactionsListState();
  }
}

class TransactionsListState extends State<TransactionsList> {
  final List<Transaction> transactions = [
    Transaction(id: "t1",title: "Shopping",amount: 100.0,date: DateTime.now()),
    Transaction(id: "t2",title: "Learning",amount: 500.0,date: DateTime.now()),
    Transaction(id: "t3",title: "Phone",amount: 250.0,date: DateTime.now()),
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      transactions.map((e) => Card(
        elevation: 5,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.redAccent,width: 1.0,style: BorderStyle.solid)),
              child: Text(
                '${e.amount} \$',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(e.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Text(DateFormat('yyyy-MM-dd').format(e.date),style: TextStyle(color: Colors.grey),),
              ],)
          ],
        ),
      )).toList(),
    );

  }

}