import 'package:basecode/widgets/DriverTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriversList extends StatefulWidget {
  static String routeName = "/driverslist";

  @override
  _DriversListState createState() => _DriversListState();
}

class _DriversListState extends State<DriversList> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Your Drivers",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
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
            Container(
              margin: EdgeInsets.only(right: 5.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  color: Theme.of(context).accentColor,
                  size: 30,
                ),
              ),
            ),
          ],
          leadingWidth: 40,
          centerTitle: false,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: width * .95,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      () {},
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
