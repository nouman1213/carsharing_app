import 'package:carsharing/Constants/constants.dart';
import 'package:flutter/material.dart';

class RatingsScreen extends StatefulWidget {
  const RatingsScreen({Key? key}) : super(key: key);

  @override
  _RatingsScreenState createState() => _RatingsScreenState();
}

class _RatingsScreenState extends State<RatingsScreen> {
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
        title: Text("Rating",
          style: TextStyle(
            fontSize: 24,
          ),),
        backgroundColor: kPrimaryRed,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings",
              style: TextStyle(
                fontSize: 24,
                color: kPrimaryBlack6,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Container(
                decoration: shadow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.star,color: Colors.yellow,
                          size: 25,),
                          Text("4.5 / 5.0 Rating",
                          style: TextStyle(
                            color: kPrimaryRed,
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.01,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("OutStanding",),
                          Text("1",
                            style: TextStyle(
                                color: kPrimaryRed
                            ),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Good",),
                          Text("1",
                            style: TextStyle(
                                color: kPrimaryRed
                            ),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Poor",),
                          Text("0",
                            style: TextStyle(
                              color: kPrimaryRed
                          ),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Very disappointing",),
                          Text("0",
                          style: TextStyle(
                            color: kPrimaryRed
                          ),)
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.01,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Angela"
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    child: Image.asset("assets/angla.png",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              const Text("Outstanding",
                style: TextStyle(
                  color: kPrimaryRed,
                ),
              ),
              const Text("The ride was awsome.The ride was awsome.",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              const Divider(thickness: 1,
              color: Colors.black,),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Ahmad"
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    child: Image.asset("assets/angla.png",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              const Text("Good",
                style: TextStyle(
                  color: kPrimaryRed,
                ),
              ),
              const Text("The ride was awsome.The ride was awsome.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
