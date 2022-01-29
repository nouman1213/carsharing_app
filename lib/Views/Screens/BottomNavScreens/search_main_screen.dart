import 'package:carsharing/Constants/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../drawer.dart';
import '../search_rides.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  DateTime _myDateTime = DateTime.now();
  String time = "Select date";
  TextEditingController leaveingTextEditingController = TextEditingController();
  TextEditingController goingToTextEditingController = TextEditingController();
  int count = 1;

  void _incrementCount() {
    setState(() {
      count++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (count >= 1) count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: kPrimaryRed),
      ),
      drawer: DrawerPage(),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 40.h,
            left: 0.h,
            right: 0.h,
            child: Image.asset(
              "assets/dashboard.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 2.h,
            right: 6.h,
            left: 6.h,
            child: Column(
              children: [
                Text(
                  "Your pick of rides at low",
                  style: TextStyle(fontSize: 20.dp, color: kPrimaryBlack),
                ),
                Text(
                  "price",
                  style: TextStyle(
                    color: kPrimaryBlack,
                    fontSize: 20.dp,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Positioned(
              top: 37.h,
              left: 2.h,
              right: 2.h,
              bottom: 5.h,
              child: Container(
                height: 40.h,
                decoration: shadow,
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    //focusedBorder: InputBorder.none,
                                    //enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.circle_outlined,
                                      size: 14.dp,
                                      color: Colors.black54,
                                    ),
                                    contentPadding:
                                        EdgeInsets.only(left: 1.h, top: 1.h),
                                    hintText: "Leaveing from",
                                    labelStyle: TextStyle(
                                      fontSize: 20.dp,
                                    ),
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          /*const Divider(
                            thickness: 1,
                            color: Colors.black54,
                          ),*/
                          SizedBox(height: 1.h),
                          Row(
                            children: [
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.add_location,
                                      size: 20.dp,
                                      color: Colors.black54,
                                    ),
                                    contentPadding:
                                        EdgeInsets.only(left: 2.h, top: 2.h),
                                    hintText: "Going to",
                                    labelStyle: TextStyle(
                                      fontSize: 16.0.dp,
                                    ),
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () async {
                                  _myDateTime = (await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2030),
                                    builder: (context, child) {
                                      return Theme(
                                        data: ThemeData
                                            .dark(), // This will change to light theme.
                                        child: child!,
                                      );
                                    },
                                  ))!;
                                  setState(() {
                                    final now = DateTime.now();
                                    time = _myDateTime.toString();
                                  });
                                },
                                icon: const Icon(Icons.calendar_today_outlined),
                              ),
                              Text(
                                _myDateTime.day.toString(),
                                style: TextStyle(
                                  fontSize: 12.dp,
                                ),
                              ),
                              Text("-"),
                              Text(
                                _myDateTime.month.toString(),
                                style: TextStyle(
                                  fontSize: 14.dp,
                                ),
                              ),
                              Text("-"),
                              Text(
                                _myDateTime.year.toString(),
                                style: TextStyle(
                                  fontSize: 14.dp,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: SizedBox(
                                    height: 6.h,
                                    child: VerticalDivider(
                                        thickness: 0.2.h, color: Colors.black)),
                              ),
                              Icon(
                                Icons.person_outline,
                                size: 30.dp,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: _incrementCount,
                                      icon: Icon(
                                        Icons.arrow_drop_up_outlined,
                                        size: 25.dp,
                                        color: Colors.black,
                                      )),
                                  Text(
                                    "$count",
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: _decrementCount,
                                      icon: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        size: 25.dp,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchRides()),
                          );
                        },
                        child: Container(
                          height: 8.h,
                          decoration: BoxDecoration(
                              color: kPrimaryRed,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                          child: Center(
                            child: Text(
                              "Search",
                              style: TextStyle(
                                fontSize: 20.dp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ), //Container
          //Container
        ], //<Widget>[]
      ),
    );
  }
}
