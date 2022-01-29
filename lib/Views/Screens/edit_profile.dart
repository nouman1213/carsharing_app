import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'drawer.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          "Edit Profile",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DrawerPage(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.h),
                    child: Center(
                      child: CircleAvatar(
                        radius: 35.dp,
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
                height: 2.h,
              ),
              Text(
                "Name",
                style: TextStyle(fontSize: 15.dp, color: Colors.grey),
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
                    fontSize: 16.dp,
                  ),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15.dp),
                ),
              ),
              SizedBox(height: 3.h),
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
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15.dp),
                ),
              ),
              SizedBox(height: 3.h),
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
                    fontSize: 15.dp,
                  ),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15.dp),
                ),
              ),
              SizedBox(height: 3.h),
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
              SizedBox(height: 1.h),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: SizedBox(
                  height: 8.h,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: buttonDesign,
                    onPressed: () {},
                    child: Text(
                      "Update",
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
