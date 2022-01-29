import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/controller/auth_controller.dart';
import 'package:carsharing/controller/fb_login_controller.dart';
import 'package:carsharing/controller/google_signIn_controller.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import 'loginscreen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  Map<String, String> userLoginData = {"email": "", "password": ""};

  Map<String, String> userSignupData = {
    "username": "",
    "email": "",
    "password": ""
  };
  AuthController controller = Get.find();

  GoogleSignInController gcontroller = Get.find();
  FacebookController fcontroller = Get.find();

  signUp() {
    if (_formKey.currentState!.validate()) {
      print("Form is valid ");
      _formKey.currentState!.save();
      print('User Sign Up Data $userSignupData');
      controller.signUp(userSignupData['email'], userSignupData['password'],
          userSignupData['username']);
    }
  }

  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 6.h, right: 6.h),
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
                  /* SizedBox(height: MediaQuery.of(context).size.height*0.02),*/
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Create Account",
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
                        text: 'Already have an account?',
                        style: TextStyle(color: Colors.black, fontSize: 14.dp),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign in!',
                              style: TextStyle(
                                  color: kPrimaryRed,
                                  fontSize: 14.dp,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(LoginScreen());
                                }),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      border: textFieldBorder,
                      contentPadding: EdgeInsets.only(left: 6.0),
                      labelText: "Full Name",
                      labelStyle: TextStyle(
                        fontSize: 15.0.dp,
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'User Name Required';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      userSignupData['username'] = value!;
                    },
                  ),
                  SizedBox(height: 3.h),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      border: textFieldBorder,
                      contentPadding: EdgeInsets.only(left: 6.0.h),
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
                      userSignupData['email'] = value!;
                    },
                  ),
                  SizedBox(height: 3.h),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      border: textFieldBorder,
                      contentPadding: EdgeInsets.only(left: 6.0.h),
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
                      userSignupData['password'] = value!;
                    },
                  ),
                  SizedBox(height: 3.h),
                  SizedBox(
                    height: 8.h,
                    width: 80.w,
                    child: ElevatedButton(
                      style: buttonDesign,
                      onPressed: () {
                        signUp();
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20.0.dp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'By signing up,You agree to our ',
                        style: TextStyle(color: Colors.black, fontSize: 13.dp),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Terms of Use',
                              style: TextStyle(
                                  color: kPrimaryRed,
                                  fontSize: 13.dp,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Column(children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 6.h, right: 6.h),
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
                            margin: EdgeInsets.only(left: 6.h, right: 6.h),
                            child: Divider(
                              color: kPrimaryRed,
                              thickness: 0.5.h,
                              height: 5.h,
                            )),
                      ),
                    ]),
                  ]),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: SizedBox(
                          /*height: 60,
                          width: 60,*/
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
                          /* height: 60,
                          width: 60,*/
                          child: IconButton(
                              icon: Image.asset('assets/facebook.png'),
                              onPressed: () {
                                fcontroller.facebookLogin();
                              }),
                        ),
                      ),
                    ],
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
