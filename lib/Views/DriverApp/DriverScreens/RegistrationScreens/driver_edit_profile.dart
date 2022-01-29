import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_drawer.dart';

class DriverEditProfile extends StatefulWidget {
  @override
  _DriverEditProfileState createState() => _DriverEditProfileState();
}

class _DriverEditProfileState extends State<DriverEditProfile> {
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
          "Edit Profile",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DriverDrawerPage(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: CircleAvatar(
                        radius: 50.dp,
                        child: Image.asset(
                          "assets/angla.png",
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Update Picture",
                    style: TextStyle(
                      fontSize: 20.dp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Name",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  //focusedBorder: InputBorder.none,
                  //enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  //disabledBorder: InputBorder.none,
                  hintText: "Angela Yu",
                  labelStyle: TextStyle(
                    fontSize: 15.dp,
                  ),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15.dp),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                "Mobile",
                style: TextStyle(fontSize: 15.dp, color: Colors.grey),
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  errorBorder: InputBorder.none,
                  hintText: "+923444949638",
                  labelStyle: TextStyle(
                    fontSize: 15.dp,
                  ),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                "Email",
                style: TextStyle(fontSize: 15.dp, color: Colors.grey),
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  errorBorder: InputBorder.none,
                  hintText: "Abdulrehman57@hotmail.com",
                  labelStyle: TextStyle(
                    fontSize: 15..dp,
                  ),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                "Date of birth",
                style: TextStyle(fontSize: 15.dp, color: Colors.grey),
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  errorBorder: InputBorder.none,
                  hintText: "10-12-1990",
                  labelStyle: TextStyle(
                    fontSize: 15.dp,
                  ),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15.dp),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.all(5.dp),
                child: SizedBox(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
