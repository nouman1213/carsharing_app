import 'dart:io';

import 'package:carsharing/controller/auth_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  AuthController authController = AuthController();
  var _userImageFile;
  final firebaseInstance = FirebaseFirestore.instance;
  Map userProfileData = {
    'user_Id': '',
    'userName': '',
    'email': '',
    'phone_number': '',
    'DoB': '',
    'profilePic': ''
  };

  void onReady() {
    super.onReady();
    //getAllProduct();
    getUserProfileData();
  }

  Future<void> getUserProfileData() async {
    // print("user id ${authController.userId}");
    try {
      var response = await firebaseInstance
          .collection('userslist')
          .where('user_Id', isEqualTo: authController.userId)
          .get();
      // response.docs.forEach((result) {
      //   print(result.data());
      // });
      if (response.docs.length > 0) {
        userProfileData['userName'] = response.docs[0]['user_name'];
        userProfileData['email'] = response.docs[0]['email'];
        userProfileData['phone_number'] = response.docs[0]['phone_number'];
        userProfileData['DoB'] = response.docs[0]['DoB'];
        userProfileData['profilePic'] = response.docs[0]['profilePic'];
      }
      print(userProfileData);
    } on FirebaseException catch (e) {
      print(e);
    } catch (error) {
      print(error);
    }
  }

    void _pickedImage(File image) {
    _userImageFile = image;
  }


}
