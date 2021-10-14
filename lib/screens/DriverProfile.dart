import 'package:basecode/widgets/Avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriverProfile extends StatefulWidget {
  static String routeName = "/driverprofile";

  @override
  _DriverProfileState createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  int id = int.parse(Get.parameters["id"]) ?? 0;
  String name = Get.parameters["name"] ?? "";

  //replace this url during integration with driver image
  String imageUrl = "https://picsum.photos/200/305";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                color: Theme.of(context).accentColor,
                size: 40,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height * .2),
                  Avatar(158.0, imageUrl),
                ],
              ),
            ),
          )),
    );
  }
}
