import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Views/Screens/BottomNavScreens/bottom_nav.dart';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'BottomNavScreens/driver_bottom_nav.dart';

class DriverDrawerPage extends StatefulWidget {
  @override
  _DriverDrawerPageState createState() => _DriverDrawerPageState();
}

class _DriverDrawerPageState extends State<DriverDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(child: Image.asset("assets/logo1.png")),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const DriverBottomNavigation()),
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
            padding: EdgeInsets.only(left: 12.dp, right: 12.dp, bottom: 60.dp),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavigation()),
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
                    padding: EdgeInsets.all(10.0.dp),
                    child: Text(
                      "Switch to Rider",
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
