import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'driver_drawer.dart';
import 'ride_published.dart';

class AddRideDetails extends StatefulWidget {
  @override
  _AddRideDetailsState createState() => _AddRideDetailsState();
}

class _AddRideDetailsState extends State<AddRideDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: kPrimaryRed),
      ),
      drawer: DriverDrawerPage(),
      body: Padding(
        padding: EdgeInsets.all(15.dp),
        child: Column(
          children: [
            Text(
              "Anything to add about your screen",
              style: TextStyle(fontSize: 24.dp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade100),
              child: Padding(
                padding: EdgeInsets.all(15.dp),
                child: Text(
                  "Flexible about where and when to meet? Not taking the moterway?\n"
                  "Got limited space in your boot?\nKeep passengers in a loop.",
                  style: TextStyle(
                    fontSize: 15.dp,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.width * 0.13,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: kPrimaryRed,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RidePublished()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Publish',
                      style: TextStyle(color: Colors.white, fontSize: 20.dp),
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
