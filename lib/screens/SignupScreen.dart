import 'package:basecode/screens/LoginScreen.dart';
import 'package:basecode/widgets/CustomTextFormField.dart';
import 'package:basecode/widgets/PasswordField.dart';
import 'package:basecode/widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  static String routeName = "/signup";
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.normal),
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(LoginScreen.routeName);
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 20.0, right: 15.0),
                child: Material(
                  elevation: 10.0,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ),
            ),
          )
        ],
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: width * .90,
              child: Column(
                children: [
                  CustomTextFormField(
                    labelText: "Name",
                    hintText: "Enter your name",
                    controller: nameController,
                    textInputType: TextInputType.name,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextFormField(
                    labelText: "Email Address",
                    hintText: "Enter your email address",
                    controller: emailController,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  PasswordField(
                    controller: passwordController,
                    hintText: "Enter your password",
                    labelText: "Password",
                    obscureText: obscurePassword,
                    onTap: handleObscurePassword,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  PrimaryButton(
                    text: "Sign Up",
                    iconData: null,
                    onPress: () {
                      Get.toNamed(SignupScreen.routeName);
                    },
                    height: 60,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Center(
                        child: GestureDetector(
                      onTap: () {
                        //add navigation to forgot password screen
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  handleObscurePassword() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }
}
