import 'package:flutter/material.dart';
import 'package:basecode/widgets/Avatar.dart';

class DriverTile extends StatelessWidget {
  final int id;
  final Function onTap;
  final String name;
  final String address;
  final String assignedTruck;
  final String plateNumber;
  final String imageUrl;
  DriverTile(this.id, this.onTap, this.name, this.address, this.assignedTruck,
      this.plateNumber, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onTap(id, name);
      },
      child: Container(
        height: 100.0,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            border:
                Border.all(color: Color.fromRGBO(229, 229, 229, 1), width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Avatar(65.0, this.imageUrl),
            Container(
              margin: EdgeInsets.only(right: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.name,
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
                  ),
                  Text(
                    this.address,
                    style: TextStyle(fontSize: 12.0),
                  ),
                  Text(
                    this.assignedTruck,
                    style: TextStyle(fontSize: 12.0),
                  ),
                  Text(
                    this.plateNumber,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Avatar(50.0, this.imageUrl),
