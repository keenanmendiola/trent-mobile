import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String name;
  final Function onTap;

  CustomAppBar(this.name, this.onTap);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        this.name,
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      leading: GestureDetector(
        onTap: this.onTap,
        child: Icon(
          Icons.chevron_left,
          color: Theme.of(context).accentColor,
          size: 40,
        ),
      ),
      leadingWidth: 40,
      centerTitle: false,
      elevation: 0,
    );
  }
}
