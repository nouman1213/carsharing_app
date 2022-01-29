import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Views/Screens/BottomNavScreens/search_main_screen.dart';
import 'package:carsharing/Views/Screens/signupscreen.dart';
import 'package:carsharing/controller/auth_controller.dart';
import 'package:carsharing/controller/fb_login_controller.dart';
import 'package:carsharing/controller/google_signIn_controller.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import 'BottomNavScreens/bottom_nav.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  bool visibility = true;

  Map<String, String> userLoginData = {"email": "", "password": ""};
  AuthController controller = Get.put(AuthController());
  GoogleSignInController gcontroller = Get.put(GoogleSignInController());
  FacebookController fcontroller = Get.put(FacebookController());

  login() {
    if (_formKey.currentState!.validate()) {
      print("Form is valid ");
      _formKey.currentState!.save();
      print('Data for login $userLoginData');
      controller.LogIn(userLoginData['email'], userLoginData['password']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 5.h),
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      "assets/logo1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  /*SizedBox(height: MediaQuery.of(context).size.height*0.10),*/
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.dp,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(color: Colors.black, fontSize: 14.dp),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign up!',
                              style: TextStyle(
                                  color: kPrimaryRed,
                                  fontSize: 15.dp,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(SignUp());
                                }),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: textFieldBorder,
                      contentPadding: EdgeInsets.only(left: 10.0.h),
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        fontSize: 15.0.dp,
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email Required';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      userLoginData['email'] = value!;
                    },
                  ),
                  SizedBox(height: 3.h),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      border: textFieldBorder,
                      contentPadding: EdgeInsets.only(left: 10.0.h),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: 15.0.dp,
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password Required';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      userLoginData['password'] = value!;
                    },
                  ),
                  SizedBox(height: 3.h),
                  SizedBox(
                    height: 8.h,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: buttonDesign,
                      onPressed: () {
                        login();
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 20.0.dp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Forget Password ?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.dp,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Click here',
                                style: TextStyle(
                                    color: kPrimaryRed,
                                    fontSize: 14.dp,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {})
                          ]),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 4.h, right: 4.h),
                          child: Divider(
                            color: kPrimaryRed,
                            thickness: 0.5.h,
                            height: 5.h,
                          )),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0.dp,
                        color: kPrimaryRed,
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 4.h, right: 4.h),
                          child: Divider(
                            color: kPrimaryRed,
                            thickness: 0.5.h,
                            height: 5.h,
                          )),
                    ),
                  ]),
                  SizedBox(height: 0.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: SizedBox(
                          // height: 60,
                          // width: 60,
                          child: IconButton(
                            icon: Image.asset('assets/google.png'),
                            onPressed: () {
                              gcontroller.signInWithGoogle();
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      InkWell(
                        child: SizedBox(
                          // height: 60,
                          // width: 60,
                          child: IconButton(
                            icon: Image.asset('assets/facebook.png'),
                            onPressed: () {
                              fcontroller.facebookLogin();
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
