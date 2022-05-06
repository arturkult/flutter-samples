import 'package:expense_manger/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: transactions.isEmpty
            ? Column(
                children: [
                  Text(
                    'No trasactions yet!',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  Transaction tx = transactions[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: FittedBox(
                            child: Text('\$${tx.amount}'),
                          ),
                        ),
                      ),
                      title: Text(
                        tx.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text(DateFormat.yMMMd().format(tx.date)),
                    ),
                  );
                },
                itemCount: transactions.length,
                // children: transactions
                //     .map((tx) => )
                //     .toList(),
              ));
  }
}
