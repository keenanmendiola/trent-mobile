import 'package:basecode/screens/DriversListScreen.dart';
import 'package:basecode/screens/SettingsScreen.dart';
import 'package:basecode/screens/TransactionHistoryScreen.dart';
import 'package:basecode/widgets/DashboardCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  static String routeName = "/dashboard";

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            GestureDetector(
              onTap: () {
                Get.toNamed(SettingsScreen.routeName);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Image(
                image: AssetImage('assets/images/logo.png'),
                height: 130,
                width: double.maxFinite,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DashboardCard(
                      FontAwesomeIcons.book, "Current Bookings", () {}),
                  DashboardCard(
                      FontAwesomeIcons.calendarDay, "Scheduled Bookings", () {})
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DashboardCard(FontAwesomeIcons.scroll, "Transaction History",
                      () {
                    navigateToPage(TransactionHistoryScreen.routeName);
                  }),
                  DashboardCard(FontAwesomeIcons.truck, "Your Trucks", () {})
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DashboardCard(FontAwesomeIcons.male, "Your Drivers", () {
                    navigateToPage(DriversList.routeName);
                  }),
                  DashboardCard(
                      FontAwesomeIcons.calendarCheck, "Reports", () {})
                ],
              )
            ],
          ),
        ));
  }

  navigateToPage(String routeName) {
    Get.toNamed(routeName);
  }
}
