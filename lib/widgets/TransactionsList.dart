import 'package:basecode/helpers/DateFormatter.dart';
import 'package:basecode/models/Transaction.dart';
import 'package:basecode/screens/TransactionHistoryDetails.dart';
import 'package:basecode/widgets/TransactionTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> _transactions;
  final Function _onPress;
  final double _width;

  TransactionsList(this._transactions, this._onPress, this._width);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormatter.getMonthAndYear(_transactions.first.transactionDate),
            style: TextStyle(
                fontSize: 17, color: Theme.of(context).colorScheme.secondary),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _transactions.length,
              itemBuilder: (BuildContext context, int index) {
                String previousDate =
                    index == 0 ? "" : _transactions[index - 1].transactionDate;
                return TransactionTile(_transactions[index], () {
                  navigateToDetailsPage(_transactions[index]);
                }, _width, previousDate);
              })
        ],
      ),
    );
  }

  navigateToDetailsPage(Transaction transaction) {
    Get.toNamed("${TransactionHistoryDetails.routeName}?id=${transaction.id}");
  }
}
