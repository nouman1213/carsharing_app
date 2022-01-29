import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../drawer.dart';
import 'cancel_ride.dart';

class YourPublications extends StatefulWidget {
  @override
  _YourPublicationsState createState() => _YourPublicationsState();
}

class _YourPublicationsState extends State<YourPublications> {
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
          "Your Publication",
          style: TextStyle(
            fontSize: 24.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DrawerPage(),
      body: Padding(
        padding: EdgeInsets.all(15.dp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "See your publication online",
                      style: TextStyle(
                        fontSize: 20.dp,
                      ),
                    ),
                    Text(
                      "No views yet",
                      style: TextStyle(fontSize: 20.dp, color: kPrimaryBlack6),
                    )
                  ],
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Divider(
              thickness: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Edit your publication",
                  style: TextStyle(
                    fontSize: 20.dp,
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Divider(
              thickness: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CancelRide()),
                );
              },
              child: Text(
                "Cancel your ride",
                style: TextStyle(fontSize: 20.dp, color: kPrimaryRed),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
