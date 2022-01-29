
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'DriverConstants/driver_constants.dart';
import 'add_ride_details.dart';
import 'driver_drawer.dart';

class PricingScreen extends StatefulWidget {
  const PricingScreen({Key? key}) : super(key: key);

  @override
  _PricingScreenState createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  int count = 11;
  int count2 = 5;
  int count3 = 7;
  int count4 = 8;

  void _incrementCount() {
    setState(() {
      count++;
    });
  }

  void _decrementCount() {
    setState(() {
      count--;
    });
  }

  void _incrementCount2() {
    setState(() {
      count2++;
    });
  }

  void _decrementCount2() {
    setState(() {
      count2--;
    });
  }

  void _incrementCount3() {
    setState(() {
      count3++;
    });
  }

  void _decrementCount3() {
    setState(() {
      count3--;
    });
  }

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
        backgroundColor: kPrimaryRed,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Pricing",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
      ),
      drawer: DriverDrawerPage(),
      body: Padding(
        padding: EdgeInsets.all(15.dp),
        child: Column(
          children: [
            Text(
              "Edit price per seat",
              style: TextStyle(fontSize: 24.dp, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 17.h,
                      width: 10.w,
                      child: Padding(
                        padding: EdgeInsets.only(top: 22.dp),
                        child: Column(
                          children: [
                            circleIcon,
                            SizedBox(
                                height: 5.h,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  thickness: 2.0,
                                )),
                            //SizedBox(height: 4.0),
                            circleIcon,
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
                            fontSize: 18.dp,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Text(
                          "Shahdara",
                          style: TextStyle(
                            fontSize: 18.dp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: _decrementCount,
                        icon: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: kPrimaryRed, width: 1)),
                          child: Icon(
                            Icons.remove,
                            size: 20.dp,
                            color: kPrimaryRed,
                          ),
                        )),
                    Text(
                      "$count",
                      style: const TextStyle(color: Colors.black, fontSize: 23),
                    ),
                    Icon(
                      Icons.attach_money,
                      size: 20.dp,
                      color: kPrimaryRed,
                    ),
                    IconButton(
                        onPressed: _incrementCount,
                        icon: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: kPrimaryRed, width: 1)),
                          child: Icon(
                            Icons.add,
                            size: 20.dp,
                            color: kPrimaryRed,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 17.h,
                      width: 10.w,
                      child: Padding(
                        padding: EdgeInsets.only(top: 22.dp),
                        child: Column(
                          children: [
                            circleIcon,
                            SizedBox(
                                height: 5.h,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  thickness: 2.0,
                                )),
                            //SizedBox(height: 4.0),
                            circleIcon,
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shahdara",
                          style: TextStyle(
                            fontSize: 18.dp,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Text(
                          "Chiniot",
                          style: TextStyle(
                            fontSize: 18.dp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: _decrementCount2,
                        icon: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: kPrimaryRed, width: 1)),
                          child: Icon(
                            Icons.remove,
                            size: 20.dp,
                            color: kPrimaryRed,
                          ),
                        )),
                    Text(
                      "$count2",
                      style: const TextStyle(color: Colors.black, fontSize: 23),
                    ),
                    Icon(
                      Icons.attach_money,
                      size: 20.dp,
                      color: kPrimaryRed,
                    ),
                    IconButton(
                        onPressed: _incrementCount2,
                        icon: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: kPrimaryRed, width: 1)),
                          child: Icon(
                            Icons.add,
                            size: 20.dp,
                            color: kPrimaryRed,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 17.h,
                      width: 10.w,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Column(
                          children: [
                            circleIcon,
                            const SizedBox(
                                height: 35,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  thickness: 2.0,
                                )),
                            //SizedBox(height: 4.0),
                            circleIcon,
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chiniot",
                          style: TextStyle(
                            fontSize: 18.dp,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Text(
                          "Fasilabad",
                          style: TextStyle(
                            fontSize: 18.dp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: _decrementCount3,
                        icon: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: kPrimaryRed, width: 1)),
                          child: Icon(
                            Icons.remove,
                            size: 20.dp,
                            color: kPrimaryRed,
                          ),
                        )),
                    Text(
                      "$count3",
                      style: const TextStyle(color: Colors.black, fontSize: 23),
                    ),
                    Icon(
                      Icons.attach_money,
                      size: 20.dp,
                      color: kPrimaryRed,
                    ),
                    IconButton(
                        onPressed: _incrementCount3,
                        icon: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: kPrimaryRed, width: 1)),
                          child: Icon(
                            Icons.add,
                            size: 20.dp,
                            color: kPrimaryRed,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.13,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: kPrimaryRed,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddRideDetails()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '   Next  ',
                      style: TextStyle(color: Colors.white, fontSize: 20.dp),
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
      ),
    );
  }
}
