import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:carsharing/Views/DriverApp/DriverScreens/RegistrationScreens/driver_license_screen.dart';
import 'package:carsharing/Views/DriverApp/DriverScreens/RegistrationScreens/driver_vehicle_info.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import '../RegistrationScreens/driver_cnic_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../RegistrationScreens/driver_edit_profile.dart';
import '../driver_drawer.dart';

class DriverAccScreen extends StatefulWidget {
  const DriverAccScreen({Key? key}) : super(key: key);

  @override
  _DriverAccScreenState createState() => _DriverAccScreenState();
}

class _DriverAccScreenState extends State<DriverAccScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: borderShape,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Registration",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DriverDrawerPage(),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
        child: Column(
          children: [
            Container(
              height: 36.h,
              width: MediaQuery.of(context).size.width,
              decoration: shadow,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverEditProfile()),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "About",
                                style: TextStyle(
                                    fontSize: 22.dp, color: kPrimaryBlack6),
                              ),
                            ),
                            Spacer(),
                            iconForward,
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 5,
                        child: Divider(thickness: 1, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DriverLicenseScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Driver license",
                                style: TextStyle(
                                    fontSize: 22.dp, color: kPrimaryBlack6),
                              ),
                            ),
                            Spacer(),
                            iconForward,
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 5,
                        child: Divider(thickness: 1, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverCNIC()),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "CNIC",
                                style: TextStyle(
                                    fontSize: 22.dp, color: kPrimaryBlack6),
                              ),
                            ),
                            Spacer(),
                            iconForward,
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 5,
                        child: Divider(thickness: 1, color: Colors.black)),
                    /*Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("ID confirmation",
                              style:TextStyle(
                                  fontSize: 24,
                                  color: kPrimaryBlack6
                              ),),
                          ),
                          Spacer(),
                          iconForward,
                        ],
                      ),
                    ),
                    const SizedBox(
                        height: 5,
                        child: Divider(
                            thickness: 1,
                            color: Colors.black)),*/
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverVehicleInfo()),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Vehicle info",
                                style: TextStyle(
                                    fontSize: 22.dp, color: kPrimaryBlack6),
                              ),
                            ),
                            Spacer(),
                            iconForward,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.13,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: buttonDesign,
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 20.dp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: RichText(
                text: TextSpan(
                    text: 'By tapping <<Submit>> I agree with ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.dp,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms and Condition,',
                          style: TextStyle(
                              color: kPrimaryRed,
                              fontSize: 15.dp,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // open desired screen
                            }),
                      TextSpan(
                          text:
                              ' I acknowledge and agree with processing and transfer for personal data according to conditions of ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.dp,
                          )),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: kPrimaryRed,
                              fontSize: 15.dp,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // open desired screen
                            }),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
