
import 'package:flutter/material.dart';

import '../drawer.dart';

class Alerts extends StatefulWidget {
  const Alerts({Key? key}) : super(key: key);

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: DrawerPage(),
      /*body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Review and confirm",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.04,
            ),
            Text("Services Selected",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Super straight haircut",),
                Text("w6,500",),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Glam Half-up Bouffant Hairstyle",),
                Text("Free",),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Afro",),
                Text("w1,700",),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.09
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Totle",),
                Text("w8,650",),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            Text("Date: Monday, 25th October",),
            Text("Time: 10-00AM to 11:00AM",),
          ],
        ),
      ),*/
    );
  }
}
