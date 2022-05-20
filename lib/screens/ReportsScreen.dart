import 'package:basecode/widgets/ReportCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ReportsScreen extends StatefulWidget {
  static String routeName = "/reports";
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Reports",
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
        height: double.maxFinite,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: width * .90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                            color: Color.fromRGBO(229, 229, 229, 1), width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "This Month's Earnings",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "PHP 20,000.00",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Icon(
                            FontAwesomeIcons.moneyBill,
                            size: 75,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: width * .90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReportCard(width, "56", "Transactions",
                            FontAwesomeIcons.solidHandshake),
                        ReportCard(
                            width, "30", "Bookings", FontAwesomeIcons.book),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: width * .90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReportCard(width, "0", "Cancellations",
                            FontAwesomeIcons.solidThumbsDown),
                        ReportCard(width, "10", "Driver Requests",
                            FontAwesomeIcons.male),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Image(
                    image: AssetImage('assets/images/graph.png'),
                    height: 225,
                    width: double.maxFinite,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
