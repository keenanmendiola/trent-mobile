import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  final String title;

  DashboardCard(this.icon, this.title, this.onPress);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        margin: EdgeInsets.all(20.0),
        height: width * .40,
        width: width * .40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 1.5,
              spreadRadius: 0.0,
              offset: Offset(0, 1), // shadow direction: bottom right
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              this.icon,
              color: Theme.of(context).accentColor,
              size: 40.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              this.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
          ],
        ),
      ),
    );
  }
}
