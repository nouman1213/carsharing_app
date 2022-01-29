import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'driver_acc_screen.dart';
import 'driver_wallet_screen.dart';
import 'driver_chat_screen.dart';
import 'driver_rides_screen.dart';
import 'driver_publish_screen.dart';

class DriverBottomNavigation extends StatefulWidget {
  const DriverBottomNavigation({Key? key}) : super(key: key);

  @override
  _DriverBottomNavigationState createState() => _DriverBottomNavigationState();
}

class _DriverBottomNavigationState extends State<DriverBottomNavigation> {
  int currentTab = 2;
  final List<Widget> screens = [
    DriverRides(),
    DriverPublishScreen(),
    DriverWallet(),
    DriverChat(),
    DriverAccScreen(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DriverPublishScreen();

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: keyboardIsOpened
          ? null
          : FloatingActionButton(
              backgroundColor: Colors.white,
              child: Image.asset("assets/carlogo.gif"),
              onPressed: () {
                setState(() {
                  currentScreen = DriverRides();
                  currentTab = 0;
                });
              },
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 10.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 5.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = DriverPublishScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add_circle_outline_rounded,
                          color: currentTab == 2 ? kPrimaryRed : Colors.grey,
                        ),
                        Text(
                          'Publish',
                          style: TextStyle(
                            color: currentTab == 2 ? kPrimaryRed : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 5.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = DriverWallet();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_balance_wallet,
                          color: currentTab == 3 ? kPrimaryRed : Colors.grey,
                        ),
                        Text(
                          'Wallet',
                          style: TextStyle(
                            color: currentTab == 3 ? kPrimaryRed : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 27.dp,
                ),
                child: Text(
                  'Rides',
                  style: TextStyle(
                    color: currentTab == 0 ? kPrimaryRed : Colors.grey,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 5.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = DriverChat();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        /*FaIcon
                          (
                          FontAwesomeIcons.bell,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                          size: 26,
                        ),*/
                        Icon(
                          Icons.chat_outlined,
                          color: currentTab == 1 ? kPrimaryRed : Colors.grey,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                            color: currentTab == 1 ? kPrimaryRed : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 5.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = const DriverAccScreen();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person_outlined,
                          color: currentTab == 4 ? kPrimaryRed : Colors.grey,
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                            color: currentTab == 4 ? kPrimaryRed : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
