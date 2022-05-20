import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_6.dart';

class Chat extends StatelessWidget {
  final String message;
  final bool isReceiver;

  Chat(this.message, this.isReceiver);

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: ChatBubbleClipper6(
          type: this.isReceiver
              ? BubbleType.receiverBubble
              : BubbleType.sendBubble),
      alignment: this.isReceiver ? Alignment.topLeft : Alignment.topRight,
      margin: EdgeInsets.only(top: 20),
      backGroundColor: this.isReceiver
          ? Colors.white
          : Theme.of(context).colorScheme.secondary,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          this.message,
          style:
              TextStyle(color: this.isReceiver ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
