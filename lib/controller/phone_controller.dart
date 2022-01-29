import 'package:carsharing/Views/Screens/BottomNavScreens/bottom_nav.dart';
import 'package:carsharing/Views/Screens/GetMobileNumber/otp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class phoneNumberController extends GetxController {
  // FirebaseAuth mAuth = FirebaseAuth.instance;

  // var status_string = "welcome".obs;
  // var code_sent = "no".obs;
  // var verification_Id = "1".obs;
  // String get status_reult => status_string.value;
  // String get code_sent_result => code_sent.value;
  // String get verfi_result => verification_Id.value;
  // signInWithPhone({
  //   @required String? my_phone_num,
  // }) async {
  //   await mAuth.verifyPhoneNumber(
  //     phoneNumber: my_phone_num!,
  //     verificationCompleted: (_) {},
  //     verificationFailed: (FirebaseException exception) {
  //       status_string.value = "error verifying your phone number";
  //     },
  //     codeSent: (String verificationId, [int? responseToken]) async {
  //       print('code sent triggerd');
  //       code_sent.value = "yes";
  //       print(code_sent.value);
  //       verification_Id.value = verificationId;
  //     },
  //     codeAutoRetrievalTimeout: (_) {},
  //     timeout: Duration(seconds: 120),
  //   );
  // }

  // myCredential({String? verId, var userInput}) {
  //   AuthCredential authCredential = PhoneAuthProvider.credential(
  //       verificationId: verId!, smsCode: userInput!);
  //   mAuth.signInWithCredential(authCredential).then((UserCredential) {
  //     Get.to(OTPScreen());
  //   })
  //       //if successful move to homePage
  //       .catchError((e) {
  //     print("Error Message ${e}");
  //   });
  // }
}
