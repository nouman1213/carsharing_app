import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DriverCNIC extends StatefulWidget {
  @override
  _DriverCNICState createState() => _DriverCNICState();
}

class _DriverCNICState extends State<DriverCNIC> {
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
        title: Text(
          "CNIC",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  height: 37.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          "CNIC(front side)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.dp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.h),
                        child: Image.asset(
                          "assets/cnic.jpeg",
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 0.7,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.h),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width * 0.10,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ElevatedButton(
                            style: buttonDesign,
                            onPressed: () {},
                            child: Text(
                              "Add a photo",
                              style: TextStyle(
                                fontSize: 20.dp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                  height: 33.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(1.h),
                        child: Text(
                          "CNIC(back side)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.dp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.h),
                        child: Image.asset(
                          "assets/cnic.jpeg",
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 0.7,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.h),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width * 0.10,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ElevatedButton(
                            style: buttonDesign,
                            onPressed: () {},
                            child: Text(
                              "Add a photo",
                              style: TextStyle(
                                fontSize: 20.dp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                height: 8.h,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: buttonDesign,
                  onPressed: () {},
                  child: Text(
                    "Confirm",
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
