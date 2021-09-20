import 'package:flutter/material.dart';

class StickyBottomAppBar extends StatelessWidget {
  final Widget child;
  StickyBottomAppBar({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
      child: child,
    );
  }
}
