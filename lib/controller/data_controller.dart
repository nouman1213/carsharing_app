import 'dart:io';

import 'package:carsharing/Models/get_user_data_model.dart';
import 'package:carsharing/controller/auth_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  AuthController authController = AuthController();

  late List<UserProfileModel> userProfile;
  bool isLoading = true;

  //onReady Function

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllData();
  }

  //getAllData Function

  void getAllData() async {
    await Future.wait([
      userProfileData(),
    ]).then((value) {
      print("Data");

      isLoading = false;
      update();
    });
  }

//userProfileData

  Future<void> userProfileData() async {
    await _firestore
        .collection('userslist')
        .where('user_Id', isEqualTo: authController.userId)
        .get()
        .then((value) {
      userProfile =
          value.docs.map((e) => UserProfileModel.fromJson(e.data())).toList();
    });
  }
}
