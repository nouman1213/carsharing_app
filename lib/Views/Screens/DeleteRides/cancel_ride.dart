import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CancelRide extends StatefulWidget {
  const CancelRide({Key? key}) : super(key: key);

  @override
  State<CancelRide> createState() => _CancelRideState();
}

class _CancelRideState extends State<CancelRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryRed,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.dp),
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
                    fontSize: 22.dp,
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
                    child: Padding(
                      padding: EdgeInsets.all(8.dp),
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
                        padding: EdgeInsets.all(8.dp),
                        child: Text(
                          "Cancel the ride",
                          style: TextStyle(color: kPrimaryRed, fontSize: 16.dp),
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
