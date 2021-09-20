import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatTextField extends StatelessWidget {
  final Function onChange;
  final Function onTap;
  ChatTextField(this.onChange, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.maxFinite,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                onChanged: onChange,
                decoration: InputDecoration(
                    hintText: "Message here...", border: InputBorder.none),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {},
              child: FaIcon(
                FontAwesomeIcons.arrowCircleUp,
                color: Theme.of(context).accentColor,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
