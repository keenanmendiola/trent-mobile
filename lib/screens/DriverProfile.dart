import 'package:basecode/widgets/Avatar.dart';
import 'package:basecode/widgets/DriverDetailsCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class DriverProfile extends StatefulWidget {
  static String routeName = "/driverprofile";

  @override
  _DriverProfileState createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  int id = int.parse(Get.parameters["id"]) ?? 0;
  String name = Get.parameters["name"] ?? "";

  //call backend here to get driver profile details

  //replace this url during integration with driver image
  String imageUrl = "https://picsum.photos/200/305";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              "Your Driver",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
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
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ColumnSuper(
                    children: [
                      Container(
                        height: 250,
                        width: width,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      Avatar(
                        158.0,
                        imageUrl,
                        borderWith: 3.0,
                      ),
                    ],
                    innerDistance: -100.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  DriverDetailsCard(width * .8, FontAwesomeIcons.male, name),
                  DriverDetailsCard(
                      width * .8,
                      FontAwesomeIcons.solidAddressCard,
                      "Brgy. Guadalupe, Cebu City"),
                  DriverDetailsCard(
                      width * .8, FontAwesomeIcons.calendar, "January 1, 2000"),
                  DriverDetailsCard(width * .8, Icons.male, "Male"),
                  DriverDetailsCard(
                      width * .8, FontAwesomeIcons.phone, "091235465897"),
                ],
              ),
            ),
          )),
    );
  }
}
