import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TransactionHistoryScreen extends StatefulWidget {
  static String routeName = "/transactionhistory";
  @override
  _TransactionHistoryScreenState createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction History"),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.chevron_left,
            color: Theme.of(context).accentColor,
            size: 40,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.search,
              size: 30,
              color: Theme.of(context).accentColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                FontAwesomeIcons.sort,
                size: 30,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("Transaction History"),
      ),
    );
  }
}
