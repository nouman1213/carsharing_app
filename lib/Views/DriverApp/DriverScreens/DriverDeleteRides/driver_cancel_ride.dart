import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DriverCancelRide extends StatefulWidget {
  @override
  _DriverCancelRideState createState() => _DriverCancelRideState();
}

class _DriverCancelRideState extends State<DriverCancelRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryRed,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.warning_amber_rounded,
                size: 100.dp,
              ),
              Text(
                "You\'re about to cancel your ride. It will be deleted "
                "and passengers won\'t be able to travel with you",
                style: TextStyle(
                    fontSize: 20.dp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.clear,
                        color: kPrimaryRed,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Cancel the ride",
                          style: TextStyle(color: kPrimaryRed, fontSize: 18.dp),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
