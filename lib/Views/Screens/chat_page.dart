import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'drawer.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15.dp),
          ),
        ),
        backgroundColor: kPrimaryRed,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          " Abas Ali",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.dp,
          ),
        ),
      ),
      drawer: DrawerPage(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Padding(
                padding: EdgeInsets.all(12.dp),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 8.h,
                        width: 10.w,
                        decoration: chatDecor,
                        child: const Center(
                          child: Text(
                            "Hi",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 8.h,
                        width: MediaQuery.of(context).size.width / 3.2,
                        decoration: chatDecor,
                        child: const Center(
                          child: Text(
                            "How Are You?",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 8.h,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: chatDecor,
                        child: const Center(
                          child: Text(
                            "I booked a car service",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 8.h,
                        width: 10.w,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Ok",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 8.h,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Let me check your order",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.all(
                  10.dp,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: shadow,
                      child: IconButton(
                        icon: Icon(Icons.call),
                        color: kPrimaryRed,
                        iconSize: 20.dp,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: 7.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: kPrimaryRed,
                              width: 1,
                            )),
                        child: TextFormField(
                          //controller: msgTextEditingController,
                          minLines: 1,
                          maxLines: 5,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 10.dp, top: 12.dp),
                              hintText: 'Type here',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(
                                Icons.send,
                                color: kPrimaryRed,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
