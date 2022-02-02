import 'package:carsharing/Views/Screens/BottomNavScreens/bottom_nav.dart';
import 'package:carsharing/Views/Screens/GetMobileNumber/otp_screen.dart';
import 'package:carsharing/controller/comman_dailog.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class phoneNumberController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController phone = TextEditingController();
  final TextEditingController otp = TextEditingController();
  String verificationId = "";
  bool isLoading = false;

  void verifyPhoneNumber() async {
    isLoading = true;

    update();

    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: "+92${phone.text}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);

          CommanDialog.showAlert(msg: 'verified');
        },
        verificationFailed: (FirebaseAuthException exception) {
          CommanDialog.showAlert(msg: "Verification Failed");
        },
        codeSent: (String _verificationId, int? forceRespondToken) {
          CommanDialog.showAlert(msg: "Verification code sent");

          verificationId = _verificationId;
          Get.to(() => OTPScreen());
        },
        codeAutoRetrievalTimeout: (String _verificationId) {
          verificationId = _verificationId;
        },
      );
    } catch (e) {
      CommanDialog.showAlert(msg: "Error Occured : $e");
    }
  }

  void signInWithPhoneNumber() async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp.text,
      );

      var signInUser = await _auth.signInWithCredential(credential);

      final User? user = signInUser.user;

      CommanDialog.showAlert(
          msg: "Sign In Sucessfully, User UID : ${user!.uid}");

      Get.to(() => BottomNavigation());

      print("Sign In Sucessfully, User UID : ${user.uid}");
    } catch (e) {
      CommanDialog.showAlert(msg: "Error Occured : $e");
    }
  }
}
