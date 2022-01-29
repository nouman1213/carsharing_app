import 'package:carsharing/Constants/constants.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CommanDialog {
  static showLoading({String title = "Loading..."}) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(3.h),
          child: Container(
            height: 10.h,
            child: Row(
              children: [
                SizedBox(
                  width: 3.w,
                ),
                Center(
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(kPrimaryRed),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  title,
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static hideLoading() {
    Get.back();
  }

  static showErrorDialog(
      {String title = "Oops Error",
      String description = "Something went wrong "}) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Padding(
          padding: EdgeInsets.all(3.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Get.textTheme.headline6,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 16.dp),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: kPrimaryRed),
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: Text("Okay"),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
}
