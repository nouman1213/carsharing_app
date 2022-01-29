import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_drawer.dart';
import 'driver_your_publications.dart';

class DriverRidePlan extends StatefulWidget {
  @override
  _DriverRidePlanState createState() => _DriverRidePlanState();
}

class _DriverRidePlanState extends State<DriverRidePlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Ride plan",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DriverDrawerPage(),
      body: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Sun, 24 Dec",
              style: TextStyle(
                color: kPrimaryBlack6,
                fontWeight: FontWeight.bold,
                fontSize: 20.dp,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
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
                  height: 20.h,
                  width: 10.w,
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Column(
                      children: [
                        Icon(Icons.circle_outlined),
                        SizedBox(
                            height: 7.h,
                            child: VerticalDivider(
                              color: Colors.black,
                              thickness: 2.0,
                            )),
                        SizedBox(height: 4.0),
                        Icon(Icons.location_on_outlined),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lahore",
                                style: TextStyle(
                                    fontSize: 15.dp, color: kPrimaryRed),
                              ),
                              Text(
                                "Model Town B Block, Lahore  ",
                                style: TextStyle(
                                  fontSize: 12.dp,
                                  color: kPrimaryBlack,
                                ),
                              ),
                            ],
                          ),
                          //Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Islamabad",
                                style: TextStyle(
                                    fontSize: 15.dp, color: kPrimaryRed),
                              ),
                              Text(
                                "Allama Iqbal Airport, Islamabad  ",
                                style: TextStyle(
                                  fontSize: 12.dp,
                                  color: kPrimaryBlack,
                                ),
                              ),
                            ],
                          ),
                          //const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DriverYourPublications()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your publications",
                    style: TextStyle(
                      color: kPrimaryBlack,
                      fontSize: 18.dp,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
