import 'package:flutter/material.dart';

class DriverDetailsCard extends StatelessWidget {
  final double width;
  final IconData iconData;
  final String text;

  DriverDetailsCard(this.width, this.iconData, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: width,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border:
              Border.all(color: Color.fromRGBO(229, 229, 229, 1), width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            iconData,
            size: 30,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(width: 25.0),
          Text(text),
        ],
      ),
    );
  }
}
