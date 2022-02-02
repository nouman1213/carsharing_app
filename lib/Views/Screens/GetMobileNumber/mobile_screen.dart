import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/controller/phone_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import 'otp_screen.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final phoneNumberController pcontroller = Get.put(phoneNumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<phoneNumberController>(
          init: phoneNumberController(),
          builder: (value) {
            if (!value.isLoading) {
              return SafeArea(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0.0.h,
                      left: 0.0.h,
                      right: 0.h,
                      child: Image.asset(
                        "assets/Verify.png",
                        fit: BoxFit.cover,
                      ),
                    ), //Container
                    Positioned(
                      top: 55.h,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 11),
                              Text(
                                "Enter Phone Number",
                                style: TextStyle(
                                  fontSize: 25.dp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 1.h),
                                child: Row(
                                  children: [
                                    Text(
                                      "+92",
                                      style: TextStyle(
                                        fontSize: 14.dp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 0.5.w),
                                    Image.asset("assets/flag.png"),
                                    SizedBox(width: 2.w),
                                    SizedBox(
                                      width: 40.h,
                                      child: TextField(
                                        controller: pcontroller.phone,
                                        keyboardType: TextInputType.number,
                                        maxLength: 11,
                                        decoration: InputDecoration(
                                          border: textFieldBorder,
                                          counterText: "",
                                          contentPadding:
                                              EdgeInsets.only(left: 5.h),
                                          labelText: "Mobile number",
                                          labelStyle: TextStyle(
                                            fontSize: 15.0.dp,
                                          ),
                                          hintStyle: const TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.h),
                                child: Text(
                                  "We will send a verification code via your phone number",
                                  style: TextStyle(
                                    fontSize: 12.dp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Container(
                                height: 8.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: kPrimaryRed,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    pcontroller.verifyPhoneNumber();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '   Continue  ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0.dp),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), //Container
                  ], //<Widget>[]
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(kPrimaryRed)),
              );
            }
          }),
    );
  }
}
