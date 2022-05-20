import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './routes.dart';
import 'screens/LogoScreen.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      primaryColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Color.fromRGBO(251, 177, 60, 1), // Your accent color
      ),
      buttonTheme:
          ButtonThemeData(buttonColor: Color.fromRGBO(245, 143, 41, 1)),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 18.0),
      ),
    ),
    getPages: routes,
    initialRoute: LogoScreen.routeName,
    debugShowCheckedModeBanner: false,
  ));
}
