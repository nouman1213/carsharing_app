import 'package:carsharing/Constants/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../drawer.dart';
import 'confirm_ride.dart';

class RideConfirmDetails extends StatefulWidget {
  const RideConfirmDetails({Key? key}) : super(key: key);

  @override
  _RideConfirmDetailsState createState() => _RideConfirmDetailsState();
}

class _RideConfirmDetailsState extends State<RideConfirmDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          " Check Details and book!",
          style: TextStyle(
              color: kPrimaryRed, fontSize: 20.dp, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: DrawerPage(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 6.w,
                left: 6.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Tue, 24 Dec",
                    style: TextStyle(
                      color: kPrimaryBlack6,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.dp,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "09:00",
                            style: TextStyle(
                                color: kPrimaryRed,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.dp),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            "12:20",
                            style: TextStyle(
                                color: kPrimaryRed,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.dp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                        width: 10.w,
                        child: Padding(
                          padding: EdgeInsets.only(top: 6.h),
                          child: Column(
                            children: [
                              Icon(Icons.circle_outlined),
                              SizedBox(
                                  height: 7.h,
                                  child: VerticalDivider(
                                    color: Colors.black,
                                    thickness: 0.3.h,
                                  )),
                              SizedBox(height: 1.h),
                              Icon(Icons.location_on_outlined),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Model Town B Block, Lahore",
                              style: TextStyle(
                                  fontSize: 15.dp, color: kPrimaryRed),
                            ),
                            Text(
                              "Lahore",
                              style: TextStyle(
                                fontSize: 1.dp,
                                color: kPrimaryBlack,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Allama Iqbal Airport, Islamabad",
                                  style: TextStyle(
                                      fontSize: 15.dp, color: kPrimaryRed),
                                ),
                                Text(
                                  "Islamabad",
                                  style: TextStyle(
                                    fontSize: 15.dp,
                                    color: kPrimaryBlack,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          "assets/rider.png",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Text(
                          "Abas Ali",
                          style: TextStyle(
                            color: kPrimaryBlack,
                            fontSize: 15.dp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            divider4,
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(
                right: 6.w,
                left: 6.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price Summary",
                    style: TextStyle(
                        color: kPrimaryBlack,
                        fontSize: 20.dp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "2 Seats: Rs. 1000",
                    style:
                        TextStyle(fontSize: 15.dp, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pay in the Car",
                        style: TextStyle(
                          color: kPrimaryBlack6,
                          fontSize: 15.dp,
                        ),
                      ),
                      Text(
                        "Cash",
                        style: TextStyle(
                            color: kPrimaryRed,
                            fontSize: 20.dp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            divider4,
            SizedBox(height: 5.h),
            SizedBox(
              height: 8.h,
              width: 80.w,
              child: ElevatedButton(
                style: buttonDesign,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConfirmRide()),
                  );
                },
                child: Text(
                  "Book Ride",
                  style: TextStyle(
                    fontSize: 20.dp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
