import 'package:basecode/widgets/MessageTile.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  static String routeName = "/messages";

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.chevron_left,
            color: Theme.of(context).accentColor,
            size: 40,
          ),
        ),
        leadingWidth: 40,
        centerTitle: false,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          boxShadow: [
            //background color of box
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0.25, //extend the shadow
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: SingleChildScrollView(
          child: renderMessagesList(),
        ),
      ),
    );
  }

  renderMessagesList() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
        MessageTile(
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300"),
      ],
    );
  }
}
