import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrucksList extends StatefulWidget {
  static String routeName = "/truckslist";
  @override
  _TrucksListState createState() => _TrucksListState();
}

class _TrucksListState extends State<TrucksList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Trucks",
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
      body: Center(
        child: Text("Add trucks list"),
      ),
    );
  }
}
