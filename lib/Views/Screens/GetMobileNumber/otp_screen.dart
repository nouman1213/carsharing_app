import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/controller/phone_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../loginscreen.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final phoneNumberController controller = Get.find();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0.dp, right: 20.dp),
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                      height: 13.h,
                    ),
                    Text(
                      "Verification",
                      style: TextStyle(
                        fontSize: 30.0.dp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "Enter your OTP code",
                      style: TextStyle(
                        fontSize: 20.0.dp,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Form(
                      key: _formKey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 8.h,
                            width: 12.w,
                            child: TextFormField(
                              autofocus: true,
                              obscureText: true,
                              style: TextStyle(
                                fontSize: 20.dp,
                              ),
                              keyboardType: TextInputType.number,
                              decoration: otpInputDecoration,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                            width: 12.w,
                            child: TextFormField(
                              autofocus: true,
                              obscureText: true,
                              style: TextStyle(fontSize: 20.dp),
                              keyboardType: TextInputType.number,
                              decoration: otpInputDecoration,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                            width: 12.w,
                            child: TextFormField(
                              autofocus: true,
                              obscureText: true,
                              style: TextStyle(fontSize: 20.dp),
                              keyboardType: TextInputType.number,
                              decoration: otpInputDecoration,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                            width: 12.w,
                            child: TextFormField(
                              autofocus: true,
                              obscureText: true,
                              style: TextStyle(fontSize: 20.dp),
                              keyboardType: TextInputType.number,
                              decoration: otpInputDecoration,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                            width: 12.w,
                            child: TextFormField(
                              autofocus: true,
                              obscureText: true,
                              style: TextStyle(fontSize: 20.dp),
                              keyboardType: TextInputType.number,
                              decoration: otpInputDecoration,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                            width: 12.w,
                            child: TextFormField(
                              autofocus: true,
                              obscureText: true,
                              style: TextStyle(fontSize: 20.dp),
                              keyboardType: TextInputType.number,
                              decoration: otpInputDecoration,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    SizedBox(
                      height: 8.h,
                      width: 80.w,
                      child: ElevatedButton(
                        style: buttonDesign,
                        onPressed: () {
                          // var userInput = _formKey;
                          // print(controller.verfi_result);
                          // controller.myCredential(
                          //     verId: controller.verfi_result,
                          //     userInput: userInput);
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            fontSize: 20.0.dp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
