import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Views/Screens/DeleteRides/your_publication.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../drawer.dart';

class RidePlan extends StatefulWidget {
  @override
  _RidePlanState createState() => _RidePlanState();
}

class _RidePlanState extends State<RidePlan> {
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
          "Ride plan",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: const DrawerPage(),
      body: Padding(
        padding: EdgeInsets.all(15.dp),
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
                          fontSize: 18.dp),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Text(
                      "12:20",
                      style: TextStyle(
                          color: kPrimaryRed,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.dp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Column(
                      children: [
                        Icon(Icons.circle_outlined),
                        SizedBox(
                            height: 5.h,
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
                  padding: EdgeInsets.only(top: 12.dp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lahore",
                                style: TextStyle(
                                    fontSize: 18.dp, color: kPrimaryRed),
                              ),
                              Text(
                                "Model Town B Block, Lahore",
                                style: TextStyle(
                                  fontSize: 14.dp,
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
                                    fontSize: 18.dp, color: kPrimaryRed),
                              ),
                              Text(
                                "Allama Iqbal Airport, Islamabad",
                                style: TextStyle(
                                  fontSize: 13.dp,
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
                  MaterialPageRoute(builder: (context) => YourPublications()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your publications",
                    style: TextStyle(
                      color: kPrimaryBlack,
                      fontSize: 20.dp,
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
