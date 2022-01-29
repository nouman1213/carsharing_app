import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_drawer.dart';

class DriverLicenseScreen extends StatefulWidget {
  const DriverLicenseScreen({Key? key}) : super(key: key);

  @override
  _DriverLicenseScreenState createState() => _DriverLicenseScreenState();
}

class _DriverLicenseScreenState extends State<DriverLicenseScreen> {
  final TextEditingController _controller = TextEditingController();
  var items = ['2022', '2023', '2024', '2025', '2026', '2027', '2028', '2029'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: borderShape,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Driver License",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DriverDrawerPage(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.dp),
          child: Column(
            children: [
              Container(
                  height: 25.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.dp),
                        child: Text(
                          "Driver License Number)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.dp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: textFieldBorder,
                            focusedBorder: textFieldBorder,
                            contentPadding: EdgeInsets.only(left: 10.0),
                            /* hintStyle: TextStyle(
                              color: Colors.grey,
                            ),*/
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  height: 33.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "The front side of driver\'s Lisense",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.dp),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          "assets/license.jpeg",
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 0.7,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width * 0.10,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ElevatedButton(
                            style: buttonDesign,
                            onPressed: () {},
                            child: Text(
                              "Add a photo",
                              style: TextStyle(
                                fontSize: 20.dp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  height: 33.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "The back side of driver\'s Lisense",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.dp),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          "assets/license.jpeg",
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 0.7,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width * 0.10,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ElevatedButton(
                            style: buttonDesign,
                            onPressed: () {},
                            child: Text(
                              "Add a photo",
                              style: TextStyle(
                                fontSize: 20.dp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Date of Expiration",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.dp),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: TextField(
                              controller: _controller,
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kPrimaryRed, width: 1.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kPrimaryRed, width: 1.0),
                                ),
                                contentPadding: EdgeInsets.only(left: 10.0),
                              ),
                            )),
                            PopupMenuButton<String>(
                              icon: const Icon(Icons.arrow_drop_down),
                              onSelected: (String value) {
                                _controller.text = value;
                              },
                              itemBuilder: (BuildContext context) {
                                return items
                                    .map<PopupMenuItem<String>>((String value) {
                                  return PopupMenuItem(
                                      child: Text(value), value: value);
                                }).toList();
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Please enter the expiration date of your document",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.dp),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.13,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: buttonDesign,
                  onPressed: () {},
                  child: Text(
                    "Confirm",
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
