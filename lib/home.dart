import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './models/transaction.dart';
import './widgets/transactions_list.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final List<Transaction> transactions = [
    Transaction(id: "t1",title: "Shopping",amount: 100.0,date: DateTime.now()),
    Transaction(id: "t2",title: "Learning",amount: 500.0,date: DateTime.now()),
    Transaction(id: "t3",title: "Phone",amount: 250.0,date: DateTime.now()),
  ];

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses app'),
      ),
      body: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child:   Card(
              child: Text('first card'),
            ),
          ),
          Card(
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
          ),
          TransactionsList(),
        ],
      ),
    );
  }

}