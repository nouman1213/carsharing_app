import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Views/Screens/RideDetails/ride_confirm_details.dart';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../drawer.dart';
import 'driver_profile.dart';

class RideDetails extends StatefulWidget {
  @override
  _RideDetailsState createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Tuesday 28 December",
          style: TextStyle(
              color: kPrimaryRed, fontSize: 20.dp, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: const DrawerPage(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 6.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "09:00",
                        style: TextStyle(
                            color: kPrimaryRed,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.dp),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "12:20",
                        style: TextStyle(
                            color: kPrimaryRed,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.dp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                    width: 10.w,
                    child: Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child: Column(
                        children: [
                          Icon(Icons.circle_outlined),
                          SizedBox(
                              height: 10.h,
                              child: VerticalDivider(
                                color: Colors.black,
                                thickness: 0.2.h,
                              )),
                          SizedBox(height: 4.0),
                          Icon(Icons.location_on_outlined),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Model Town B Block, Lahore",
                          style: TextStyle(fontSize: 15.dp, color: kPrimaryRed),
                        ),
                        Text(
                          "Lahore",
                          style: TextStyle(
                            fontSize: 15.dp,
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
            ),
            divider4,
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Price for 2 Seats",
                    style: TextStyle(color: kPrimaryBlack6, fontSize: 15.dp),
                  ),
                  Text(
                    "RS. 1000",
                    style:
                        TextStyle(fontSize: 15.dp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            divider4,
            Padding(
              padding: EdgeInsets.all(2.w),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DriverProfile()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            "assets/rider.png",
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 3.w),
                              child: Text(
                                "Abas Ali",
                                style: TextStyle(
                                    color: kPrimaryBlack,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16.dp,
                                ),
                                Text("4.5")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_sharp,
                      color: kPrimaryBlack,
                    )
                  ],
                ),
              ),
            ),
            divider2,
            Padding(
              padding: EdgeInsets.all(1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Honda CIVIC",
                            style: TextStyle(
                                fontSize: 15.dp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Black",
                            style: TextStyle(
                              color: kPrimaryBlack6,
                              fontSize: 15.dp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/caricon.png",
                  ),
                ],
              ),
            ),
            divider2,
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/smokingicon.png",
                        height: 6.h,
                        width: 10.w,
                      ),
                      Text(
                        " No Smoking",
                        style: TextStyle(
                          color: kPrimaryBlack6,
                          fontSize: 15.dp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/cablecar.png",
                        height: 6.h,
                        width: 10.w,
                      ),
                      Text(
                        " Max, 2 in the back seats",
                        style: TextStyle(
                          color: kPrimaryBlack6,
                          fontSize: 15.dp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    height: 8.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: kPrimaryRed,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RideConfirmDetails()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Continue  ',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.dp),
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
            )
          ],
        ),
      ),
    );
  }
}
