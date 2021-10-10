import 'package:basecode/screens/ConversationScreen.dart';
import 'package:basecode/screens/DashboardScreen.dart';
import 'package:basecode/screens/DriversListScreen.dart';
import 'package:basecode/screens/ForgotPasswordScreen.dart';
import 'package:basecode/screens/LoginScreen.dart';
import 'package:basecode/screens/MessagesScreen.dart';
import 'package:basecode/screens/RegistrationScreen.dart';
import 'package:basecode/screens/SettingsScreen.dart';
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
];
