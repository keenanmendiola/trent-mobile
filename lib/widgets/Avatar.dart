import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String imageUrl;

  Avatar(this.size, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage(this.imageUrl), fit: BoxFit.fill),
      ),
    );
  }
}
