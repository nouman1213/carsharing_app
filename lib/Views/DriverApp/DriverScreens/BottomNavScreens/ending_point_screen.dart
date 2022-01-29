import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Views/DriverApp/DriverScreens/stop_over_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_drawer.dart';

class EndingPointScreen extends StatefulWidget {
  @override
  _EndingPointScreenState createState() => _EndingPointScreenState();
}

class _EndingPointScreenState extends State<EndingPointScreen> {
  int count = 1;

  void _incrementCount() {
    setState(() {
      count++;
    });
  }

  void _decrementCount() {
    setState(() {
      count--;
    });
  }

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
          "Ending Point",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
      ),
      drawer: DriverDrawerPage(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Drop-off",
                  style: TextStyle(
                    color: kPrimaryBlack6,
                    fontSize: 26.dp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextField(
                //controller: TextEditingController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.house_outlined),
                  border: textFieldBorder,
                  contentPadding: const EdgeInsets.only(left: 10.0),
                  labelText: "Choose City",
                  labelStyle: TextStyle(
                    fontSize: 15.dp,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    size: 28.dp,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              TextField(
                //controller: TextEditingController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.location_on_outlined),
                  border: textFieldBorder,
                  contentPadding: const EdgeInsets.only(left: 10.0),
                  labelText: "Enter Drop-off address",
                  labelStyle: TextStyle(
                    fontSize: 15.dp,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                'So how many CarSharing Passenger can you take ',
                style: TextStyle(fontSize: 26.dp),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: _decrementCount,
                      icon: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: kPrimaryRed, width: 1)),
                        child: Icon(
                          Icons.remove,
                          size: 25.dp,
                          color: kPrimaryRed,
                        ),
                      )),
                  Text(
                    "$count",
                    style: TextStyle(color: Colors.black, fontSize: 33.dp),
                  ),
                  IconButton(
                      onPressed: _incrementCount,
                      icon: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: kPrimaryRed, width: 1)),
                        child: Icon(
                          Icons.add,
                          size: 25.dp,
                          color: kPrimaryRed,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
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
                      MaterialPageRoute(builder: (context) => StopOver()),
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
            ],
          ),
        ),
      ),
    );
  }
}
