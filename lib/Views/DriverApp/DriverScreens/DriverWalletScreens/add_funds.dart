
import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'add_new_card.dart';

class AddFunds extends StatefulWidget {
  @override
  _AddFundsState createState() => _AddFundsState();
}

class _AddFundsState extends State<AddFunds> {
  TextEditingController fundsTextEditingController = TextEditingController();
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
          "Add Funds",
          style: TextStyle(fontSize: 22.dp),
        ),
        backgroundColor: kPrimaryRed,
      ),
      //drawer: DriverDrawerPage(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Text(
                "PKR",
                style: TextStyle(
                  fontSize: 18.dp,
                  color: kPrimaryBlack6,
                ),
              ),
              SizedBox(
                height: 20.h,
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  controller: fundsTextEditingController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "0",
                    hintStyle: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.13,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: buttonDesign,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddNewCard()),
                    );
                  },
                  child: Text(
                    "Next",
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
