import 'package:carsharing/Constants/constants.dart';
import 'package:carsharing/Views/Screens/loginscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import 'Screens/BottomNavScreens/bottom_nav.dart';
import 'Screens/GetMobileNumber/mobile_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<dynamic> slides = [
    {
      "title": "Confirm Ride",
      "body1":
          "Drag the mark to a specific point in the map \n or enter tour street to build route.",
      "image": "assets/confirmride.png",
    },
    {
      "title": "Route Building",
      "body1":
          "After building route you will be suggested a car,\n price and arrival time.",
      "image": "assets/routebuilding.png",
    },
    {
      "title": "Car Sharing",
      "body1":
          "Wait for a taxi at the point you have marked. A \n car will be there in a few minutes.",
      "image": "assets/carsharing.png",
    }
  ];
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: slides.length,
                itemBuilder: (context, index) {
                  // contents of slider
                  return Slider(
                    title: slides[index]["title"],
                    body1: slides[index]["body1"],
                    image: slides[index]["image"],
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.h),
            child: Center(
              child: Column(
                children: [
                  Text(
                    slides[currentIndex]["title"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kPrimaryRed,
                        fontSize: 20.dp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    slides[currentIndex]["body1"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.dp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                    child: SizedBox(
                  height: 50.h,
                  child: Image.asset(
                    slides[currentIndex]["image"],
                    fit: BoxFit.contain,
                  ),
                )),
                SizedBox(height: 5.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        slides.length,
                        (index) => buildDot(index, context),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    GestureDetector(
                      onTap: () {
                        if (currentIndex == slides.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MobileScreen()),
                          );
                        }
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.bounceIn);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.3.h, horizontal: 0.3.h),
                        child: Container(
                          height: 8.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: kPrimaryRed,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.dp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.off(() => LoginScreen());
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.black, fontSize: 20.dp),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

// container created for dots
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: currentIndex == index ? 12 : 12,
      width: currentIndex == index ? 12 : 12,
      margin: EdgeInsets.all(1.h),
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryRed),
        borderRadius: BorderRadius.circular(20.dp),
        color: currentIndex == index ? kPrimaryRed : Colors.white,
      ),
    );
  }
}

class Slider extends StatelessWidget {
  final String title;
  final String body1;
  final String image;

  Slider({
    required this.title,
    required this.body1,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(),
    );
  }
}
