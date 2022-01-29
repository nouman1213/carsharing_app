import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class AddNewCard extends StatelessWidget {
  TextEditingController cardTextEditingController = TextEditingController();

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
          "Add New Card",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.lock,
                    color: kPrimaryRed,
                  ),
                  Text(" Your payment info is stored securely"),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                decoration: shadow,
                child: Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Column(
                    children: [
                      TextField(
                        controller: cardTextEditingController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "Card number",
                          suffixIcon: Icon(Icons.credit_card),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
                              controller: cardTextEditingController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: "Expiry date(from the card)",
                                //suffixIcon: Icon(Icons.add),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: TextField(
                              controller: cardTextEditingController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: "CVV",
                                //suffixIcon: Icon(Icons.credit_card),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 3,
                ),
                child: Row(
                  children: const [
                    Icon(Icons.credit_card),
                    Icon(Icons.credit_card),
                    Icon(Icons.credit_card),
                    Icon(Icons.credit_card),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              Column(
                children: [
                  Text(
                    "In order to verify your account we may charge",
                    style: TextStyle(fontSize: 15.dp),
                  ),
                  Text(
                    "your account with small amount that will",
                    style: TextStyle(fontSize: 15.dp),
                  ),
                  Text(
                    "be refunded",
                    style: TextStyle(fontSize: 15.dp),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                height: 8.h,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: buttonDesign,
                  onPressed: () {
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  AddNewCard()),
                    );*/
                  },
                  child: Text(
                    "Verify card",
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
