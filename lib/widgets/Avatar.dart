import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String imageUrl;
  final double borderWith;
  Avatar(this.size, this.imageUrl, {this.borderWith = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(this.imageUrl), fit: BoxFit.fill),
          color: Colors.white,
          border: Border.all(color: Colors.white, width: borderWith)),
    );
  }
}
