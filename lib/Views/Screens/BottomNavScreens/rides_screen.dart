import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Views/Screens/DeleteRides/ride_plan.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../drawer.dart';

class Rides extends StatefulWidget {
  @override
  _RidesState createState() => _RidesState();
}

class _RidesState extends State<Rides> {
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
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Your rides",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: const DrawerPage(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RidePlan()),
                  );
                },
                child: Container(
                  height: 35.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Padding(
                    padding: EdgeInsets.all(5.h),
                    child: Stack(
                      children: [
                        Row(
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
                                        height: 4.h,
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
                                      height: 17.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5.dp),
                                        child: Column(
                                          children: [
                                            Icon(Icons.circle_outlined),
                                            SizedBox(
                                                height: 7.h,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Lahore",
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              color: kPrimaryRed),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03),
                                        Text(
                                          "Islamabad",
                                          style: TextStyle(
                                            color: kPrimaryRed,
                                            fontSize: 18.dp,
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
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  "assets/rider.png",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.dp),
                                child: Text(
                                  "Abas Ali",
                                  style: TextStyle(
                                    color: kPrimaryBlack,
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RidePlan()),
                  );
                },
                child: Container(
                  height: 35.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Padding(
                    padding: EdgeInsets.all(5.h),
                    child: Stack(
                      children: [
                        Row(
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
                                        height: 4.h,
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
                                      height: 17.h,
                                      width: 30.w,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5.dp),
                                        child: Column(
                                          children: [
                                            Icon(Icons.circle_outlined),
                                            SizedBox(
                                                height: 7.h,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Lahore",
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              color: kPrimaryRed),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03),
                                        Text(
                                          "Islamabad",
                                          style: TextStyle(
                                            color: kPrimaryRed,
                                            fontSize: 18.dp,
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
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  "assets/rider.png",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.dp),
                                child: Text(
                                  "Abas Ali",
                                  style: TextStyle(
                                    color: kPrimaryBlack,
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
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
