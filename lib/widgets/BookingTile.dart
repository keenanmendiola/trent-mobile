import 'package:basecode/models/Booking.dart';
import 'package:basecode/widgets/Avatar.dart';
import 'package:flutter/material.dart';

class BookingTile extends StatelessWidget {
  final double _width;
  final Booking _booking;
  final Function _onPress;

  BookingTile(this._width, this._booking, this._onPress);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this._onPress,
      child: Container(
        height: 150.0,
        width: _width,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            border:
                Border.all(color: Color.fromRGBO(229, 229, 229, 1), width: 1)),
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Avatar(
                  47.0,
                  _booking.photoUrl,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _booking.name,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      _booking.company,
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Booking Date",
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      "Amount Due",
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      "Number of Trucks",
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _booking.dateBooked,
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      _booking.amountDue,
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      "${_booking.numberOfTrucks}",
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
