import 'package:basecode/screens/MapScreen.dart';
import 'package:basecode/widgets/Avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingDetailsScreen extends StatefulWidget {
  static String routeName = "/bookingdetails";
  @override
  _BookingDetailsScreenState createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  int id = int.parse(Get.parameters["id"]) ?? 0;
  String bookingDate = Get.parameters["booking_date"]
          .substring(0, Get.parameters["booking_date"].length - 8) ??
      "";

  //call backend to get booking details

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          bookingDate,
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontStyle: FontStyle.normal,
              fontSize: 22),
        ),
        leadingWidth: 30,
        centerTitle: false,
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
        elevation: 0,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100.0,
                width: width * .9,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                        color: Color.fromRGBO(229, 229, 229, 1), width: 1)),
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Avatar(60, "https://picsum.photos/200/305"),
                    SizedBox(width: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Felisa Limuaco",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 3.5),
                        Text(
                          "Robertson Construction",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                child: Text(
                  "Pickup and Drop-off Locations",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20.0),
                ),
              ),
              Container(
                height: 80.0,
                width: width * .9,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                        color: Color.fromRGBO(229, 229, 229, 1), width: 1)),
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "From:",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          "To:",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Robertson Construction Compound, Brgy. Guadalupe, Cebu City",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          width: 285,
                        ),
                        Container(
                          child: Text(
                            "Bldg 1, IT Park, Brgy. Apas, Cebu City",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          width: 285,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                child: Text(
                  "Payment Details",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20.0),
                ),
              ),
              Container(
                height: 100.0,
                width: width * .9,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  border: Border.all(
                      color: Color.fromRGBO(229, 229, 229, 1), width: 1),
                ),
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Cash on Delivery",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Truck Base Rates Total",
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                  Text(
                                    "Distance",
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                  Text(
                                    "Rate Per Kilometer",
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Php 200.00",
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                  Text(
                                    "30 km",
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                  Text(
                                    "Php 50.0",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Php 1700.00",
                              style: TextStyle(fontSize: 13.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                child: Text(
                  "Trucks Used",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      width: 200.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/truck.jpg'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      width: 200.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/truck.jpg'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      width: 200.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/truck.jpg'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      width: 200.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/truck.jpg'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                child: Text(
                  "Remarks",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20.0),
                ),
              ),
              Container(
                height: 100.0,
                width: width * .9,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                        color: Color.fromRGBO(229, 229, 229, 1), width: 1)),
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Cargo weighs 1000kg and has 50 bags. Drop off point is near the bridge by the guard house.",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30.0),
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(width: width * .9, height: 60),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(MapScreen.routeName);
                    },
                    child: Text(
                      "TRACK",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w600),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(251, 177, 60, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
