import 'dart:async';
import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Views/Screens/BottomNavScreens/bottom_nav.dart';
import 'package:carsharing/Views/onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 6), (timer) {
      Get.to(
        () => BottomNavigation(),
        //OnboardingScreen()
      );
      /* Get.offAll(() => OnboardingScreen());*/
      timer.cancel();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 30.h,
                width: 100.w,
                child: Image.asset(
                  "assets/small.gif",
                ),
              ),
              Text(
                "CAR SHARING",
                style: TextStyle(
                  fontSize: 26.dp,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryRed,
                ),
              ),
              SizedBox(height: 30.h),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Let\'s go together",
                      style: TextStyle(
                        fontSize: 36.0.dp,
                        color: kPrimaryRed,
                      ),
                    ),
                    Text(
                      "Sharing is caring",
                      style: TextStyle(
                        fontSize: 26.0.dp,
                        color: kPrimaryRed,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
