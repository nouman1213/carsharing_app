import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class TopUpReceipt extends StatefulWidget {
  @override
  _TopUpReceiptState createState() => _TopUpReceiptState();
}

class _TopUpReceiptState extends State<TopUpReceipt> {
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
          "Receipt",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.dp),
        child: Column(
          children: [
            Image.asset("assets/easypaisa.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Upload correct Easypaisa payment transaction receipt",
              style: TextStyle(
                color: kPrimaryRed,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
                decoration: shadow,
                height: 20.h,
                width: MediaQuery.of(context).size.width,
                child: Icon(
                  Icons.add_circle_outline_rounded,
                  size: 50.dp,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: 8.h,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: buttonDesign,
                onPressed: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  TopUpReceipt()),
                  );*/
                },
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 20.dp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Our team will contact with you soon",
              style: TextStyle(color: kPrimaryBlack6, fontSize: 16.dp),
            ),
          ],
        ),
      ),
    );
  }
}
