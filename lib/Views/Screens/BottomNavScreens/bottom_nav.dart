import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/controller/data_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import 'account_screen.dart';
import 'alerts_screen.dart';
import 'chat_screen.dart';
import 'rides_screen.dart';
import 'search_main_screen.dart';

final DataController dataController = Get.put(DataController());

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 2;
  final List<Widget> screens = [
    Rides(),
    Search(),
    Alerts(),
    Chat(),
    Account(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Search();

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
                  currentScreen = Rides();
                  currentTab = 0;
                });
              },
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 5.dp,
        child: SizedBox(
          height: 8.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = Search();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: currentTab == 2 ? kPrimaryRed : Colors.grey,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: currentTab == 2 ? kPrimaryRed : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 30.dp,
                    onPressed: () {
                      setState(() {
                        currentScreen = Alerts();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.notifications_none_outlined,
                          color: currentTab == 3 ? kPrimaryRed : Colors.grey,
                        ),
                        Text(
                          'Alerts',
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
                    minWidth: 40.dp,
                    onPressed: () {
                      setState(() {
                        currentScreen = Chat();
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
                    minWidth: 40.dp,
                    onPressed: () {
                      setState(() {
                        currentScreen = Account();
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
