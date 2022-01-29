import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'driver_drawer.dart';
import 'pricing_screen.dart';

class StopOver extends StatefulWidget {
  @override
  _StopOverState createState() => _StopOverState();
}

class _StopOverState extends State<StopOver> {
  bool Lahore = true;
  bool Shahdara = false;
  bool Chiniot = false;
  bool Fasilabad = false;
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
        backgroundColor: kPrimaryRed,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "StopOvers",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
      ),
      drawer: DriverDrawerPage(),
      body: Padding(
        padding: EdgeInsets.all(15.dp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add stopovers to get more passengers",
              style: TextStyle(
                fontSize: 22.dp,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lahore",
                  style: TextStyle(
                    fontSize: 20.dp,
                  ),
                ),
                SizedBox(
                  width: 28,
                  /*color: Colors.red,*/
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: Lahore,
                    onChanged: (val) {
                      setState(() {
                        Lahore = val!;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shahdara",
                  style: TextStyle(
                    fontSize: 20.dp,
                  ),
                ),
                SizedBox(
                  width: 28,
                  /*color: Colors.red,*/
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: Shahdara,
                    onChanged: (val) {
                      setState(() {
                        Shahdara = val!;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chiniot",
                  style: TextStyle(
                    fontSize: 20.dp,
                  ),
                ),
                SizedBox(
                  width: 28,
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: Chiniot,
                    onChanged: (val) {
                      setState(() {
                        Chiniot = val!;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fasilabad",
                  style: TextStyle(
                    fontSize: 20.dp,
                  ),
                ),
                SizedBox(
                  width: 28,
                  /*color: Colors.red,*/
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: Fasilabad,
                    onChanged: (val) {
                      setState(() {
                        Fasilabad = val!;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "Add City",
              style: TextStyle(
                fontSize: 20.dp,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Center(
              child: Container(
                height: 8.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: kPrimaryRed,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PricingScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '   Next  ',
                        style: TextStyle(color: Colors.white, fontSize: 20.dp),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
