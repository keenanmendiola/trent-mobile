import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final double width;
  final String primaryText;
  final String secondaryText;
  final IconData iconData;

  ReportCard(this.width, this.primaryText, this.secondaryText, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * .43,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border:
              Border.all(color: Color.fromRGBO(229, 229, 229, 1), width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  primaryText,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
                Text(secondaryText,
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25.0),
            child: Icon(
              iconData,
              size: 40,
              color: Color.fromRGBO(255, 140, 97, 1),
            ),
          )
        ],
      ),
    );
  }
}
