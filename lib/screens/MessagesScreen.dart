import 'package:basecode/widgets/MessageTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ConversationScreen.dart';

class MessagesScreen extends StatefulWidget {
  static String routeName = "/messages";

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Messages",
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
      ),
    );
  }

  renderMessagesList() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        MessageTile(
            1,
            "Austin Rosario",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/300",
            this.navigateToConversation),
        MessageTile(
            1,
            "Keegan Sicat",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/301",
            this.navigateToConversation),
        MessageTile(
            1,
            "Blaise Javier",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/302",
            this.navigateToConversation),
        MessageTile(
            1,
            "Angelito Roa",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
            "https://picsum.photos/200/303",
            this.navigateToConversation),
      ],
    );
  }

  navigateToConversation(int id, String name) {
    Get.toNamed("${ConversationScreen.routeName}?id=$id&name=$name");
  }
}
