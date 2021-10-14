import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Function onPress;
  final double height;

  PrimaryButton({
    @required this.text,
    @required this.iconData,
    @required this.onPress,
    @required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      minWidth: double.maxFinite,
      height: 50,
      child: RaisedButton(
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            this.iconData != null ? Icon(iconData) : SizedBox.shrink(),
            SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 17.0, color: Colors.white),
            ),
          ],
        ),
        elevation: 8.0,
        color: Theme.of(context).buttonColor,
      ),
    );
  }
}
