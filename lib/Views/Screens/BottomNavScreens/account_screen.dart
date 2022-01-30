import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/controller/auth_controller.dart';
import 'package:carsharing/controller/data_controller.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../drawer.dart';
import '../edit_profile.dart';
import '../loginscreen.dart';

final DataController controller = Get.find();

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
          "Accounts",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
      ),
      drawer: DrawerPage(),
      body: Padding(
        padding: EdgeInsets.all(3.h),
        child: Column(
          children: [
            Container(
              height: 20.h,
              decoration: shadow,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(3.h),
                    child: CircleAvatar(
                      radius: 35.0,
                      child: Icon(Icons.person),
                      // child: Image.asset(
                      //   "assets/angla.png",
                      // ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(3.h, 0, 1.h, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          controller.userProfileData['userName'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.dp,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: kPrimaryRed,
                              size: 15.dp,
                            ),
                            Text(
                              controller.userProfileData['email'],
                              style: TextStyle(
                                color: kPrimaryRed,
                                fontSize: 15.dp,
                              ),
                            )
                          ],
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height * 0.02,
                        // ),
                        // Row(
                        //   children: [
                        //     Icon(
                        //       Icons.settings_cell_outlined,
                        //       color: kPrimaryRed,
                        //       size: 15.dp,
                        //     ),
                        //     Text(
                        //       "+92340000000",
                        //       style: TextStyle(
                        //         color: kPrimaryRed,
                        //         fontSize: 15.dp,
                        //       ),
                        //     )
                        //   ],
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              height: 48.h,
              width: MediaQuery.of(context).size.width,
              decoration: shadow,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.dp),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons-registration.png",
                            ),
                            const Text(
                              "   Edit Profile",
                              style: TextStyle(
                                  fontSize: 24, color: kPrimaryBlack6),
                            ),
                            Spacer(),
                            iconForward,
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 5,
                        child: Divider(thickness: 1, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons-headset.png",
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              " Contact Support",
                              style: TextStyle(
                                  fontSize: 24, color: kPrimaryBlack6),
                            ),
                          ),
                          Spacer(),
                          iconForward,
                        ],
                      ),
                    ),
                    const SizedBox(
                        height: 5,
                        child: Divider(thickness: 1, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons-lock.png",
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              " Terms",
                              style: TextStyle(
                                  fontSize: 24, color: kPrimaryBlack6),
                            ),
                          ),
                          Spacer(),
                          iconForward,
                        ],
                      ),
                    ),
                    const SizedBox(
                        height: 5,
                        child: Divider(thickness: 1, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons-security.png",
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              " Privicy Policy",
                              style: TextStyle(
                                  fontSize: 24, color: kPrimaryBlack6),
                            ),
                          ),
                          Spacer(),
                          iconForward,
                        ],
                      ),
                    ),
                    const SizedBox(
                        height: 5,
                        child: Divider(thickness: 1, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons-logout.png",
                            ),
                            const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                " Log Out",
                                style: TextStyle(
                                    fontSize: 24, color: kPrimaryBlack6),
                              ),
                            ),
                          ],
                        ),
                      ),
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
