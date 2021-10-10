import 'package:basecode/widgets/DashboardCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatefulWidget {
  static String routeName = "/dashboard";

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DashboardCard(FontAwesomeIcons.book, "Current Bookings", () {}),
              DashboardCard(
                  FontAwesomeIcons.calendarDay, "Scheduled Bookings", () {})
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DashboardCard(
                  FontAwesomeIcons.scroll, "Transaction History", () {}),
              DashboardCard(FontAwesomeIcons.truck, "Your Trucks", () {})
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DashboardCard(FontAwesomeIcons.male, "Your Drivers", () {}),
              DashboardCard(FontAwesomeIcons.calendarCheck, "Reports", () {})
            ],
          )
        ],
      ),
    ));
  }
}
