import 'package:flutter/material.dart';
import 'package:expense/models/Transaction.dart';

void main() {
  runApp(
      MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Transaction> transaction = [
    Transaction(id: 1, title: "title", amount: 500, description: "This is first description", dateTime: DateTime.parse('1969-07-20 20:18:04Z')),
    Transaction(id: 2, title: "Second Title", amount: 500,  description: "This is second description", dateTime: DateTime.parse('1969-07-20 20:18:04Z'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Expenses"),
        ),
        body: ListView.builder(
            itemCount: transaction.length,
            itemBuilder: (BuildContext context, int index){
              return  Card(
                child: Column(
                  children: [
                    Text('Transaction id : ${transaction[index].id}', style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('Transaction Title : ${transaction[index].title}'),
                    Text('Transaction Amount : ${transaction[index].amount}'),
                    Text('Transaction Description : ${transaction[index].description}'),
                    Text('Transaction DateTime : ${transaction[index].dateTime}'),
                  ],
                ),
              );
            })
    );
  }
}
