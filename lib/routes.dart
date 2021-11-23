import 'package:basecode/screens/BookingDetailsScreen.dart';
import 'package:basecode/screens/ConversationScreen.dart';
import 'package:basecode/screens/CurrentBookingsScreen.dart';
import 'package:basecode/screens/DashboardScreen.dart';
import 'package:basecode/screens/DriverProfile.dart';
import 'package:basecode/screens/DriversListScreen.dart';
import 'package:basecode/screens/ForgotPasswordScreen.dart';
import 'package:basecode/screens/LoginScreen.dart';
import 'package:basecode/screens/LogoScreen.dart';
import 'package:basecode/screens/MapScreen.dart';
import 'package:basecode/screens/MessagesScreen.dart';
import 'package:basecode/screens/RegistrationScreen.dart';
import 'package:basecode/screens/ReportsScreen.dart';
import 'package:basecode/screens/ScheduledBookingsScreen.dart';
import 'package:basecode/screens/SettingsScreen.dart';
import 'package:basecode/screens/SignupScreen.dart';
import 'package:basecode/screens/TransactionHistoryDetails.dart';
import 'package:basecode/screens/TransactionHistoryScreen.dart';
import 'package:basecode/screens/TrucksList.dart';
import 'package:get/get.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),
  GetPage(name: DashboardScreen.routeName, page: () => DashboardScreen()),
  GetPage(name: RegistrationScreen.routeName, page: () => RegistrationScreen()),
  GetPage(name: SettingsScreen.routeName, page: () => SettingsScreen()),
  GetPage(
      name: ForgotPasswordScreen.routeName, page: () => ForgotPasswordScreen()),
  GetPage(name: MessagesScreen.routeName, page: () => MessagesScreen()),
  GetPage(name: ConversationScreen.routeName, page: () => ConversationScreen()),
  GetPage(name: DriversList.routeName, page: () => DriversList()),
  GetPage(name: DriverProfile.routeName, page: () => DriverProfile()),
  GetPage(name: LogoScreen.routeName, page: () => LogoScreen()),
  GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),
  GetPage(name: SignupScreen.routeName, page: () => SignupScreen()),
  GetPage(
      name: TransactionHistoryScreen.routeName,
      page: () => TransactionHistoryScreen()),
  GetPage(name: SettingsScreen.routeName, page: () => SettingsScreen()),
  GetPage(name: ReportsScreen.routeName, page: () => ReportsScreen()),
  GetPage(name: CurrentBookings.routeName, page: () => CurrentBookings()),
  GetPage(
      name: BookingDetailsScreen.routeName, page: () => BookingDetailsScreen()),
  GetPage(name: MapScreen.routeName, page: () => MapScreen()),
  GetPage(
      name: TransactionHistoryDetails.routeName,
      page: () => TransactionHistoryDetails()),
  GetPage(
      name: ScheduledBookingsScreen.routeName,
      page: () => ScheduledBookingsScreen()),
  GetPage(name: TrucksList.routeName, page: () => TrucksList()),
];
