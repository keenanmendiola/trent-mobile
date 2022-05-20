import 'package:basecode/models/Booking.dart';
import 'package:basecode/screens/BookingDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BookingTile.dart';

class BookingsList extends StatelessWidget {
  final List<Booking> _bookings;
  final double _width;
  final String _title;

  BookingsList(this._title, this._bookings, this._width);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Text(
            _title,
            style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _bookings.length,
            itemBuilder: (BuildContext context, int index) {
              return BookingTile(_width, _bookings[index], () {
                navigateToBookingDetails(
                    _bookings[index].bookingId, _bookings[index].dateBooked);
              });
            }),
      ],
    );
  }

  navigateToBookingDetails(int id, String date) {
    Get.toNamed("${BookingDetailsScreen.routeName}?id=$id&booking_date=$date");
  }
}
