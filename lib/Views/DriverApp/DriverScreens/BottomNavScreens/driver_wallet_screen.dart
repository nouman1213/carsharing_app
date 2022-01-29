import 'package:carsharing/Views/DriverApp/DriverScreens/DriverConstants/driver_constants.dart';
import 'package:carsharing/Views/DriverApp/DriverScreens/DriverWalletScreens/add_funds.dart';
import 'package:carsharing/Views/DriverApp/DriverScreens/DriverWalletScreens/driver_topup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../driver_drawer.dart';

class DriverWallet extends StatefulWidget {
  @override
  _DriverWalletState createState() => _DriverWalletState();
}

class _DriverWalletState extends State<DriverWallet> {
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
          "Wallet",
          style: TextStyle(
            fontSize: 20.dp,
          ),
        ),
        backgroundColor: kPrimaryRed,
      ),
      drawer: DriverDrawerPage(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.h),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              decoration: shadow,
              child: Padding(
                padding: EdgeInsets.all(2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Available Balance",
                      style: TextStyle(
                        fontSize: 20.dp,
                        color: kPrimaryBlack6,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "PKR 1000",
                          style: TextStyle(
                            fontSize: 20.dp,
                            color: kPrimaryRed,
                          ),
                        ),
                        Image.asset("assets/coins.png")
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              decoration: shadow,
              child: Padding(
                padding: EdgeInsets.all(2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cards",
                      style: TextStyle(
                        fontSize: 20.dp,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/card-exchange.png"),
                        const Text(
                          " Add a credit with card to enjoy a \n seamless payments experience",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.13,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: buttonDesign,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AddFunds()),
                          );
                        },
                        child: Text(
                          "Go with card",
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              decoration: shadow,
              child: Padding(
                padding: EdgeInsets.all(2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bank transfer",
                      style: TextStyle(
                        fontSize: 20.dp,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/external-bank.png"),
                        Text(
                          " Add a credit with Bank Topup to\n enjoy a easy payments experience",
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.13,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: buttonDesign,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverTopUp()),
                          );
                        },
                        child: Text(
                          "Go with Topup",
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
          ],
        ),
      ),
    );
  }
}
