import 'package:basecode/screens/LoginScreen.dart';
import 'package:basecode/screens/SignupScreen.dart';
import 'package:basecode/widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoScreen extends StatefulWidget {
  static String routeName = "/logo";
  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: width * .95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150.0,
                  ),
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 150,
                    width: double.maxFinite,
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  PrimaryButton(
                    text: "Log In",
                    iconData: null,
                    onPress: () {
                      Get.toNamed(LoginScreen.routeName);
                    },
                    height: 60,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  PrimaryButton(
                    text: "Sign Up",
                    iconData: null,
                    onPress: () {
                      Get.toNamed(SignupScreen.routeName);
                    },
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
