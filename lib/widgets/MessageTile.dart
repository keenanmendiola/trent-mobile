import 'package:basecode/widgets/Avatar.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final int id;
  final String name;
  final String message;
  final String imageUrl;
  final Function onTap;
  MessageTile(this.id, this.name, this.message, this.imageUrl, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onTap(id, name);
      },
      child: Card(
        child: ListTile(
          leading: Avatar(50.0, this.imageUrl),
          title: Text(
            this.name,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            this.message,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
