import 'dart:io';

import 'package:carsharing/controller/auth_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  // List userProfile = [];
  bool isLoading = true;
  var userId;

  //onReady Function

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserProfileData();
    //userProfileData();
  }

  ///new
  final firebaseInstance = FirebaseFirestore.instance;
  final AuthController authController = AuthController();
  Map userProfileData = {'userName': '', 'email': ''};
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
        isLoading = false;
        update();
        print('dataaa fetch succesfully');
      }
      print(userProfileData);
    } on FirebaseException catch (e) {
      print(e);
    } catch (error) {
      print('"data fetching faild" $error');
    }
  }
}
