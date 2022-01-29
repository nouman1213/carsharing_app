import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_drawer.dart';
import 'driver_cancel_ride.dart';

class DriverYourPublications extends StatefulWidget {
  const DriverYourPublications({Key? key}) : super(key: key);

  @override
  _DriverYourPublicationsState createState() => _DriverYourPublicationsState();
}

class _DriverYourPublicationsState extends State<DriverYourPublications> {
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
            fontSize: 22.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DriverDrawerPage(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
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
                        fontSize: 15.dp,
                      ),
                    ),
                    Text(
                      "No views yet",
                      style: TextStyle(fontSize: 15.dp, color: kPrimaryBlack6),
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
                    fontSize: 15.dp,
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
                  MaterialPageRoute(builder: (context) => DriverCancelRide()),
                );
              },
              child: Text(
                "Cancel your ride",
                style: TextStyle(fontSize: 15.dp, color: kPrimaryRed),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
