import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/controller/phone_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../loginscreen.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final phoneNumberController pcontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
                    SizedBox(
                      height: size.height / 18,
                      width: size.width / 1.2,
                      child: PinCodeTextField(
                        appContext: context,
                        controller: pcontroller.otp,
                        length: 6,
                        onChanged: (val) {},
                        pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            fieldHeight: size.height / 18,
                            fieldWidth: size.width / 8),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    SizedBox(
                      height: 8.h,
                      width: 80.w,
                      child: ElevatedButton(
                        style: buttonDesign,
                        onPressed: () {
                          pcontroller.signInWithPhoneNumber();
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
