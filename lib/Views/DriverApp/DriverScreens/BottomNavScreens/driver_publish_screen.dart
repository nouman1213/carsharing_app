import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_drawer.dart';
import '../pick_up_screen.dart';

class DriverPublishScreen extends StatefulWidget {
  const DriverPublishScreen({Key? key}) : super(key: key);

  @override
  _DriverPublishScreenState createState() => _DriverPublishScreenState();
}

class _DriverPublishScreenState extends State<DriverPublishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: borderShape,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Publish Post",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DriverDrawerPage(),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PickUpScreen()),
                  );
                },
                child: Image.asset("assets/iconscreate.png")),
            Text(
              "Create a post",
              style: TextStyle(
                fontSize: 25.dp,
                color: Colors.grey.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
