import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'RideDetails/ride_details.dart';
import 'drawer.dart';

class SearchRides extends StatefulWidget {
  const SearchRides({Key? key}) : super(key: key);

  @override
  _SearchRidesState createState() => _SearchRidesState();
}

class _SearchRidesState extends State<SearchRides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryRed,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Text(
              "  Lahore  ",
              style: TextStyle(color: Colors.white, fontSize: 20.dp),
            ),
            Icon(
              Icons.arrow_forward_sharp,
              size: 26.dp,
              color: Colors.white,
            ),
            Text(
              "  Islamabad",
              style: TextStyle(color: Colors.white, fontSize: 20.dp),
            ),
          ],
        ),
      ),
      drawer: const DrawerPage(),
      body: Column(
        children: [
          Container(
            height: 8.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: kPrimaryRed,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "28 Dec, 2021",
                        style: TextStyle(color: Colors.white, fontSize: 18.dp),
                      ),
                    ),
                    Text(
                      "2, Seats",
                      style: TextStyle(color: Colors.white, fontSize: 18.dp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h, right: 4.h),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RideDetails()),
                );
              },
              child: Container(
                height: 35.h,
                decoration: shadow,
                child: Padding(
                  padding: EdgeInsets.all(8.dp),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "09:00",
                                    style: TextStyle(
                                        color: kPrimaryRed,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 2.h),
                                  const Text(
                                    "3h 20",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 2.h),
                                  const Text(
                                    "12:20",
                                    style: TextStyle(
                                        color: kPrimaryRed,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                /*alignment: Alignment.topRight,*/
                                child: SizedBox(
                                  height: 20.h,
                                  width: 15.w,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 2.h,
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(Icons.circle_outlined),
                                        SizedBox(
                                            height: 8.h,
                                            child: VerticalDivider(
                                              color: Colors.black,
                                              thickness: 0.4.h,
                                            )),
                                        SizedBox(height: 0.4.h),
                                        Icon(Icons.location_on_outlined),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Lahore",
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/walkred.png",
                                        ),
                                        Image.asset(
                                          "assets/walkred.png",
                                        ),
                                        Image.asset(
                                          "assets/walkblack.png",
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 0.6.h),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Islamabad",
                                              style: TextStyle(
                                                fontSize: 16.dp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/walkred.png",
                                            ),
                                            Image.asset(
                                              "assets/walkblack.png",
                                            ),
                                            Image.asset(
                                              "assets/walkred.png",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    "assets/rider.png",
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text(
                                        "Abas Ali",
                                        style: TextStyle(
                                          color: kPrimaryBlack,
                                          fontSize: 16.dp,
                                        ),
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
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 5.w),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: Text(
                              "RS. 1000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.dp,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h, right: 4.h),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RideDetails()),
                );
              },
              child: Container(
                height: 35.h,
                decoration: shadow,
                child: Padding(
                  padding: EdgeInsets.all(8.dp),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "09:00",
                                    style: TextStyle(
                                        color: kPrimaryRed,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 2.h),
                                  const Text(
                                    "3h 20",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 2.h),
                                  const Text(
                                    "12:20",
                                    style: TextStyle(
                                        color: kPrimaryRed,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Align(
                                /*alignment: Alignment.topRight,*/
                                child: SizedBox(
                                  height: 20.h,
                                  width: 15.w,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 2.h),
                                    child: Column(
                                      children: [
                                        Icon(Icons.circle_outlined),
                                        SizedBox(
                                            height: 8.h,
                                            child: VerticalDivider(
                                              color: Colors.black,
                                              thickness: 0.4.h,
                                            )),
                                        SizedBox(height: 0.4.h),
                                        Icon(Icons.location_on_outlined),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Lahore",
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/walkred.png",
                                        ),
                                        Image.asset(
                                          "assets/walkred.png",
                                        ),
                                        Image.asset(
                                          "assets/walkblack.png",
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 0.6.h),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Islamabad",
                                              style: TextStyle(
                                                fontSize: 16.dp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/walkred.png",
                                            ),
                                            Image.asset(
                                              "assets/walkblack.png",
                                            ),
                                            Image.asset(
                                              "assets/walkred.png",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    "assets/rider.png",
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text(
                                        "Abas Ali",
                                        style: TextStyle(
                                          color: kPrimaryBlack,
                                          fontSize: 16.dp,
                                        ),
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
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 5.w),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: Text(
                              "RS. 5000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.dp,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
