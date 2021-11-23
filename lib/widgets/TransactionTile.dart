import 'package:basecode/helpers/DateFormatter.dart';
import 'package:basecode/models/Transaction.dart';
import 'package:basecode/screens/TransactionHistoryDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionTile extends StatelessWidget {
  final Transaction _transaction;
  final Function _onTap;
  final double _width;
  final String _previousDate;

  TransactionTile(
      this._transaction, this._onTap, this._width, this._previousDate);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        renderDate(),
        Container(
          height: 70.0,
          width: _width * .65,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(
                  color: Color.fromRGBO(229, 229, 229, 1), width: 1)),
          padding: EdgeInsets.all(15.0),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(
                  "${TransactionHistoryDetails.routeName}?id=${_transaction.id}");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _transaction.name,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  _transaction.amount,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  renderDate() {
    if (_previousDate == _transaction.transactionDate) {
      return SizedBox(
        width: _width * .15,
      );
    }
    return Container(
      width: _width * .15,
      child: Column(
        children: [
          Text(
            "${DateFormatter.getDayOfWeek(_transaction.transactionDate)}",
            style: TextStyle(fontSize: 15.0),
          ),
          Text(
            "${DateFormatter.getDay(_transaction.transactionDate)}",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
