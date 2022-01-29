import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ConfirmRide extends StatefulWidget {
  @override
  _ConfirmRideState createState() => _ConfirmRideState();
}

class _ConfirmRideState extends State<ConfirmRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(6.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: SizedBox(
                  //height: MediaQuery.of(context).size.height/2,
                  child: Image.asset("assets/tick.png"),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "Booking Confirmed",
                style: TextStyle(
                    color: kPrimaryRed,
                    fontSize: 25.dp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 1.h),
              Column(
                children: [
                  Text(
                    "Your booking has been successfully",
                    style: TextStyle(
                      fontSize: 15.dp,
                    ),
                  ),
                  Text(
                    "confirmed",
                    style: TextStyle(
                      fontSize: 15.dp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 8.h,
                width: 80.w,
                child: ElevatedButton(
                  style: buttonDesign,
                  onPressed: () {
                    /*Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavigation()),)*/
                    ;
                  },
                  child: Text(
                    "Go to Home",
                    style: TextStyle(
                      fontSize: 20.dp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
