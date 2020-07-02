import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';



class NewTransaction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewTransactionState();
  }
}

class NewTransactionState extends State<NewTransaction> {

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Card(
        elevation: 5,
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(decoration: InputDecoration(labelText: 'Title'),
                  controller: titleController,
                ),
                TextField(decoration: InputDecoration(labelText: 'Amount'),
                  controller: amountController,
                ),
                FlatButton(
                  onPressed: () => {
                    print(titleController.text),
                    print(amountController.text),
                  },
                  child: Text('Add transaction'),
                  textColor: Colors.purple,
                )
              ],
            )
        )
    );

  }

}