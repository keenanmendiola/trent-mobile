import 'package:flutter/material.dart';

class BookingDetailsScreen extends StatefulWidget {
  static String routeName = "/bookingdetails";
  @override
  _BookingDetailsScreenState createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Booking Details"),
      ),
    ));
  }
}
