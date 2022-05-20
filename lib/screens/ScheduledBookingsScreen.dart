import 'package:basecode/models/Booking.dart';
import 'package:basecode/widgets/BookingsList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduledBookingsScreen extends StatefulWidget {
  static String routeName = "/scheduledbookings";
  @override
  _ScheduledBookingsScreenState createState() =>
      _ScheduledBookingsScreenState();
}

class _ScheduledBookingsScreenState extends State<ScheduledBookingsScreen> {
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Scheduled Bookings",
            style: TextStyle(
                color: Colors.black, fontStyle: FontStyle.normal, fontSize: 20),
          ),
          elevation: 0,
          leadingWidth: 30,
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.chevron_left,
              color: Theme.of(context).colorScheme.secondary,
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
              BookingsList("Incoming Bookings", sampleData, width * .9),
            ],
          ),
        ),
      ),
    );
  }
}
