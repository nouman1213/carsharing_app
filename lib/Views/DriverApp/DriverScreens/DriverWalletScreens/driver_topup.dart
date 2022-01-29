import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'topup_receipt.dart';

class DriverTopUp extends StatefulWidget {
  const DriverTopUp({Key? key}) : super(key: key);

  @override
  _DriverTopUpState createState() => _DriverTopUpState();
}

class _DriverTopUpState extends State<DriverTopUp> {
  bool isEnabled = false;

  enableButton() {
    setState(() {
      isEnabled = true;
    });
  }

  disableButton() {
    setState(() {
      isEnabled = false;
    });
  }

  sampleFunction() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TopUpReceipt()),
    );
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
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "BankTransfer",
          style: TextStyle(
            fontSize: 22.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Topup",
                style: TextStyle(
                  fontSize: 20.dp,
                  color: kPrimaryBlack6,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "Choose anyone option and upload the receipt.\nOur team will contact with you soon.",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              RaisedButton(
                onPressed: enableButton,
                color: Colors.white,
                textColor: Colors.white,
                elevation: 0,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/jazzcash.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                          text: 'Account title:',
                          style: TextStyle(color: kPrimaryRed, fontSize: 15.dp),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' AbdulRehman',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.dp)),
                          ],
                        )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                          text: 'Account Number:',
                          style: TextStyle(color: kPrimaryRed, fontSize: 15.dp),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' 03444949638',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.dp)),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              RaisedButton(
                onPressed: enableButton,
                color: Colors.white,
                elevation: 0,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/easypaisa.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                          text: 'Account title:',
                          style: TextStyle(color: kPrimaryRed, fontSize: 15.dp),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' AbdulRehman',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.dp)),
                          ],
                        )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                          text: 'Account Number:',
                          style: TextStyle(color: kPrimaryRed, fontSize: 15.dp),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' 03444949638',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.dp)),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              RaisedButton(
                onPressed: enableButton,
                color: Colors.white,
                elevation: 0,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: shadow,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/alhabib.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                          text: 'Account title:',
                          style: TextStyle(color: kPrimaryRed, fontSize: 15.dp),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' AbdulRehman',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.dp)),
                          ],
                        )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                          text: 'Account Number:',
                          style: TextStyle(color: kPrimaryRed, fontSize: 15.dp),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' 03444949638',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.dp)),
                          ],
                        )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                          text: 'Bank Name:',
                          style: TextStyle(color: kPrimaryRed, fontSize: 15.dp),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Bank Al Habib',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.dp)),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              /* RaisedButton(
                onPressed: isEnabled ? ()=> sampleFunction() : null,
                color: Colors.pinkAccent,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Sample Button'),
              ),*/
              SizedBox(
                height: 8.h,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: buttonDesign,
                  onPressed: isEnabled ? () => sampleFunction() : null,
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 20..dp,
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
