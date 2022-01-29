import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_drawer.dart';

class DriverVehicleInfo extends StatefulWidget {
  @override
  _DriverVehicleInfoState createState() => _DriverVehicleInfoState();
}

class _DriverVehicleInfoState extends State<DriverVehicleInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: borderShape,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Vehicle Info",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DriverDrawerPage(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.dp),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Car Brand",
                  labelStyle: TextStyle(
                    fontSize: 15.dp,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  contentPadding: const EdgeInsets.all(10.0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Car Model",
                  labelStyle: TextStyle(
                    fontSize: 15.dp,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  contentPadding: const EdgeInsets.all(10.0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Car Color",
                  labelStyle: TextStyle(
                    fontSize: 15.dp,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  contentPadding: const EdgeInsets.all(10.0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Car Number Plate",
                  labelStyle: TextStyle(
                    fontSize: 15.dp,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  contentPadding: const EdgeInsets.all(10.0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  height: 33.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "Photo of your vehicle",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.dp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.dp),
                        child: Image.asset(
                          "assets/car.jpeg",
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 0.7,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.dp),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width * 0.10,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ElevatedButton(
                            style: buttonDesign,
                            onPressed: () {},
                            child: text,
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  height: 33.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0.dp),
                        child: Text(
                          "Certificate of vehicle registration",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.dp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.dp),
                        child: Image.asset(
                          "assets/cnic.jpeg",
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 0.7,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width * 0.10,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ElevatedButton(
                            style: buttonDesign,
                            onPressed: () {},
                            child: text,
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 2.h),
              Container(
                  height: 38.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.dp),
                        child: Column(
                          children: [
                            Text(
                              "Certificate of vehicle registration",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.dp),
                            ),
                            Text(
                              "(Back Side)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.dp),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.dp),
                        child: Image.asset(
                          "assets/cnic.jpeg",
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 0.7,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.dp),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width * 0.10,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ElevatedButton(
                            style: buttonDesign,
                            onPressed: () {},
                            child: text,
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 5.h,
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
