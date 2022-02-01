import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Views/DriverApp/DriverScreens/BottomNavScreens/driver_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'BottomNavScreens/bottom_nav.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(child: Image.asset("assets/logo1.png")),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigation()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.access_time),
            title: const Text(
              "Request History",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text(
              "Support",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          const Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.h),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DriverBottomNavigation()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 2,
                      color: kPrimaryRed,
                    )),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(2.h),
                    child: Text(
                      "Switch to driver",
                      style: TextStyle(
                          color: kPrimaryRed,
                          fontSize: 20.dp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
