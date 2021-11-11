import 'package:basecode/models/Booking.dart';
import 'package:basecode/widgets/BookingsList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrentBookings extends StatefulWidget {
  static String routeName = "/currentbookings";
  @override
  _CurrentBookingsState createState() => _CurrentBookingsState();
}

class _CurrentBookingsState extends State<CurrentBookings> {
  final List<Booking> sampleData = [
    Booking(
        1,
        "Felisa Limuaco",
        "Robertson Construction",
        "August 9, 2021 11:59 pm",
        "Php 3,000.00",
        3,
        "https://picsum.photos/200/305"),
    Booking(
        2,
        "Felisa Limuaco",
        "Robertson Construction",
        "August 9, 2021 11:59 pm",
        "Php 3,000.00",
        3,
        "https://picsum.photos/200/305"),
    Booking(
        3,
        "Felisa Limuaco",
        "Robertson Construction",
        "August 9, 2021 11:59 pm",
        "Php 3,000.00",
        3,
        "https://picsum.photos/200/305"),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Bookings"),
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
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.white,
        child: ListView(
          children: [
            BookingsList("Bookings for Today", sampleData, width * .9),
            SizedBox(
              height: 20.0,
            ),
            BookingsList("Incoming Bookings", sampleData, width * .9),
          ],
        ),
      ),
    ));
  }
}
