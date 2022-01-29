import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:carsharing/Views/DriverApp/DriverScreens/DriverDeleteRides/driver_ride_plan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_drawer.dart';

class DriverRides extends StatefulWidget {
  @override
  _DriverRidesState createState() => _DriverRidesState();
}

class _DriverRidesState extends State<DriverRides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: DriverDrawerPage(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(3.h),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DriverRidePlan()),
                  );
                },
                child: Container(
                  height: 25.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "Tue, 24 Dec ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.dp),
                                ),
                                SizedBox(
                                    height: 2.h,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 2.0,
                                    )),
                                Text(
                                  " 09:00",
                                  style: TextStyle(
                                      fontSize: 20.dp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 14.h,
                                  width: 10.w,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.circle_outlined),
                                        SizedBox(
                                            height: 4.h,
                                            child: VerticalDivider(
                                              color: Colors.black,
                                              thickness: 2.0,
                                            )),
                                        Icon(Icons.location_on_outlined),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lahore",
                                      style: TextStyle(
                                          fontSize: 15.dp, color: kPrimaryRed),
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03),
                                    Text(
                                      "Islamabad",
                                      style: TextStyle(
                                        color: kPrimaryRed,
                                        fontSize: 15.dp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                height: 25.h,
                width: MediaQuery.of(context).size.width,
                decoration: shadow,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text(
                                "Tue, 24 Dec ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.dp),
                              ),
                              SizedBox(
                                  height: 2.h,
                                  child: VerticalDivider(
                                    color: Colors.black,
                                    thickness: 2.0,
                                  )),
                              Text(
                                " 09:00",
                                style: TextStyle(
                                    fontSize: 20.dp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 14.h,
                                width: 10.w,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 12.0),
                                  child: Column(
                                    children: [
                                      Icon(Icons.circle_outlined),
                                      SizedBox(
                                          height: 4.h,
                                          child: VerticalDivider(
                                            color: Colors.black,
                                            thickness: 2.0,
                                          )),
                                      Icon(Icons.location_on_outlined),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lahore",
                                    style: TextStyle(
                                        fontSize: 15.dp, color: kPrimaryRed),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03),
                                  Text(
                                    "Islamabad",
                                    style: TextStyle(
                                      color: kPrimaryRed,
                                      fontSize: 15.dp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
