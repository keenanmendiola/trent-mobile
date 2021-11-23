import 'package:basecode/models/Transaction.dart';
import 'package:basecode/widgets/TransactionsList.dart';
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
  final List<Transaction> _transactions1 = [
    Transaction(1, "11/11/2021", "Austin Jamil", "Php 3, 000.00",
        "Jamil Construction Services", 5),
    Transaction(2, "11/11/2021", "Keegan Stephan", "Php 3, 000.00",
        "Jamil Construction Services", 5),
    Transaction(3, "12/11/2021", "Angelito Sonny", "Php 3, 000.00",
        "Jamil Construction Services", 5),
    Transaction(4, "13/11/2021", "Blaise Tionco", "Php 3, 000.00",
        "Jamil Construction Services", 5),
  ];

  final List<Transaction> _transactions2 = [
    Transaction(5, "11/10/2021", "Austin Jamil", "Php 3, 000.00",
        "Jamil Construction Services", 5),
    Transaction(6, "12/10/2021", "Keegan Stephan", "Php 3, 000.00",
        "Jamil Construction Services", 5),
    Transaction(7, "13/10/2021", "Angelito Sonny", "Php 3, 000.00",
        "Jamil Construction Services", 5),
    Transaction(8, "13/10/2021", "Blaise Tionco", "Php 3, 000.00",
        "Jamil Construction Services", 5),
  ];

  final List<Transaction> _transactions3 = [
    Transaction(9, "11/9/2021", "Austin Jamil", "Php 3, 000.00",
        "Jamil Construction Services", 5),
    Transaction(10, "12/9/2021", "Keegan Stephan", "Php 3, 000.00",
        "Jamil Construction Services", 5),
    Transaction(11, "12/9/2021", "Angelito Sonny", "Php 3, 000.00",
        "Jamil Construction Services", 5),
    Transaction(12, "13/9/2021", "Blaise Tionco", "Php 3, 000.00",
        "Jamil Construction Services", 5),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TransactionsList(this._transactions1, () {}, width),
              TransactionsList(this._transactions2, () {}, width),
              TransactionsList(this._transactions3, () {}, width),
            ],
          ),
        ),
      ),
    );
  }
}
