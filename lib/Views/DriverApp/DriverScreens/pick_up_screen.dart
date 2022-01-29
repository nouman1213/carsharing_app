import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'BottomNavScreens/ending_point_screen.dart';
import 'driver_drawer.dart';

class PickUpScreen extends StatefulWidget {
  const PickUpScreen({Key? key}) : super(key: key);

  @override
  _PickUpScreenState createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime _myDateTime = DateTime.now();
  String time = "Select date";
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
          "Pick-up Point",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
      ),
      drawer: DriverDrawerPage(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.dp),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Pick-up",
                  style: TextStyle(
                    color: kPrimaryBlack6,
                    fontSize: 25.dp,
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
                  contentPadding: EdgeInsets.only(left: 10.dp),
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
                  labelText: "Enter Pick-up address",
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
              TextField(
                //controller: TextEditingController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () async {
                      _myDateTime = (await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2030),
                        builder: (context, child) {
                          return Theme(
                            data: ThemeData
                                .dark(), // This will change to light theme.
                            child: child!,
                          );
                        },
                      ))!;
                      setState(() {
                        final now = DateTime.now();
                        time = _myDateTime.toString();
                      });
                    },
                    icon: const Icon(Icons.calendar_today_outlined),
                  ),
                  border: textFieldBorder,
                  contentPadding: EdgeInsets.only(left: 10.0),
                  labelText: "Enter Pick-up date",
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
              TextField(
                //controller: TextEditingController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () async {
                      _selectTime(context);
                    },
                    icon: const Icon(Icons.timer_sharp),
                  ),
                  border: textFieldBorder,
                  labelText: "${selectedTime.hour}:${selectedTime.minute}",
                  contentPadding: const EdgeInsets.only(left: 10.0),
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
                      MaterialPageRoute(
                          builder: (context) => EndingPointScreen()),
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

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}
