import 'package:intl/intl.dart';

class DateFormatter {
  static String getMonth(String date) {
    return date.split(' ').first.substring(0, 3);
  }

  static const List<String> months = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JULY",
    "AUG",
    "SEP",
    "OCT",
    "NOV",
    "DEC"
  ];

  static String getMonthAndYear(String date) {
    DateTime _date = DateFormat("dd/MM/yyyy").parse(date);
    String month = months[_date.month - 1];
    return "$month ${_date.year}";
  }

  static String getDayOfWeek(String date) {
    DateTime _date = DateFormat("dd/MM/yyyy").parse(date);
    String dayOfWeek = DateFormat('EEEE').format(_date);
    return dayOfWeek.substring(0, 3);
  }

  static int getDay(String date) {
    DateTime _date = DateFormat("dd/MM/yyyy").parse(date);
    return _date.day;
  }
}
