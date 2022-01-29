import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'ratings_screen.dart';

class DriverProfile extends StatefulWidget {
  @override
  _DriverProfileState createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Driver Profile",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(6.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(3.w),
                    child: Center(
                      child: CircleAvatar(
                        radius: 40.dp,
                        child: Image.asset(
                          "assets/angla.png",
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Abas Ali",
                    style:
                        TextStyle(fontSize: 20.dp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RatingsScreen()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          " 4.5 / 5.0 Rating",
                          style: TextStyle(fontSize: 15.dp, color: kPrimaryRed),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_sharp,
                      color: kPrimaryRed,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Divider(
                thickness: 0.2.h,
                color: Colors.black,
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Image.asset("assets/talk.png"),
                  Text(
                    "  I talk depending upon my mood",
                    style: TextStyle(fontSize: 15.dp, color: kPrimaryBlack6),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/musical.png"),
                  Text(
                    "  it\'s all about the playlist",
                    style: TextStyle(fontSize: 15.dp, color: kPrimaryBlack6),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/pets.png"),
                  Text(
                    "  No pets please",
                    style: TextStyle(fontSize: 15.dp, color: kPrimaryBlack6),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Image.asset("assets/verified.png"),
                  Text(
                    "  Phone verified",
                    style:
                        TextStyle(fontSize: 15.dp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/verified.png"),
                  Text(
                    "  Email verified",
                    style:
                        TextStyle(fontSize: 15.dp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              SizedBox(height: 1.h),
              Text(
                "20 rides published",
                style: TextStyle(fontSize: 15.dp, color: kPrimaryBlack6),
              ),
              SizedBox(height: 1.h),
              Text(
                "Member since May 2021",
                style: TextStyle(fontSize: 15.dp, color: kPrimaryBlack6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
