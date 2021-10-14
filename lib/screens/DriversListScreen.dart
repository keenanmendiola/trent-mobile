import 'package:basecode/screens/DriverProfile.dart';
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
                      1,
                      this.navigateToDriverProfile,
                      "Pablo Sandoval",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/300"),
                  DriverTile(
                      2,
                      this.navigateToDriverProfile,
                      "Keegan Seecat",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/301"),
                  DriverTile(
                      3,
                      this.navigateToDriverProfile,
                      "Blaise Javier",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/302"),
                  DriverTile(
                      4,
                      this.navigateToDriverProfile,
                      "Angelito Roa",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/303"),
                  DriverTile(
                      5,
                      this.navigateToDriverProfile,
                      "Glen Medel",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/304"),
                  DriverTile(
                      6,
                      this.navigateToDriverProfile,
                      "Mitchell Espejo",
                      "Brgy. Guadalupe, Cebu City",
                      "10 Wheeler",
                      "ABC-123",
                      "https://picsum.photos/200/305"),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  navigateToDriverProfile(int id, String name) {
    Get.toNamed("${DriverProfile.routeName}?id=$id&name=$name");
  }
}
