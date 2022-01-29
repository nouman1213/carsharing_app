import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'driver_drawer.dart';

class RidePublished extends StatefulWidget {
  @override
  _RidePublishedState createState() => _RidePublishedState();
}

class _RidePublishedState extends State<RidePublished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryRed,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: DriverDrawerPage(),
      backgroundColor: kPrimaryRed,
      body: Padding(
        padding: EdgeInsets.all(15.dp),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Expanded(
              child: Text(
                "Your ride is online\n"
                "Passengers can now book and travel with you!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.dp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.13,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RidePublished()),
                );*/
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'OK',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.dp),
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
