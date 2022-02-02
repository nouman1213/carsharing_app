import 'package:carsharing/Views/Screens/BottomNavScreens/bottom_nav.dart';
import 'package:carsharing/Views/Screens/BottomNavScreens/search_main_screen.dart';
import 'package:carsharing/Views/Screens/loginscreen.dart';
import 'package:carsharing/controller/comman_dailog.dart';
import 'package:carsharing/controller/data_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var userId;
  //Registeration function
  Future<void> signUp(
      email, password, username, phone_number, DoB, profilePic) async {
    try {
      CommanDialog.showLoading();
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password);
      print(userCredential);
      CommanDialog.hideLoading();
      try {
        CommanDialog.showLoading();
        var response =
            await FirebaseFirestore.instance.collection('userslist').add({
          'user_Id': userCredential.user!.uid,
          'user_name': username,
          "password": password,
          'joinDate': DateTime.now().millisecondsSinceEpoch,
          'email': email,
          'phone_number': phone_number,
          'DoB': DoB,
          'profilePic': profilePic,
        });
        print("Firebase response1111 ${response.id}");
        CommanDialog.hideLoading();
      } catch (exception) {
        CommanDialog.hideLoading();
        print("Error Saving Data at firestore $exception");
      }
      Get.back();
    } on FirebaseAuthException catch (e) {
      CommanDialog.hideLoading();
      if (e.code == 'weak-password') {
        CommanDialog.showErrorDialog(
            description: "The password provided is too weak.");
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        CommanDialog.showErrorDialog(
            description: 'The account already exists for that email.');
        print('The account already exists for that email.');
      }
    } catch (e) {
      CommanDialog.showErrorDialog(description: "SomeThings went Wrong");
      print(e);
    }
  }
  //SignIn function

  Future<void> LogIn(email, password) async {
    print('$email,$password');
    try {
      CommanDialog.showLoading();
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      CommanDialog.hideLoading();
      print(userCredential.user!.uid);
      userId = userCredential.user!.uid;
      Get.off(BottomNavigation());
    } on FirebaseAuthException catch (e) {
      CommanDialog.hideLoading();

      if (e.code == 'user-not-found') {
        CommanDialog.showErrorDialog(description: "user-not-found");
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        CommanDialog.showErrorDialog(
            description: 'Wrong password provided for that user.');
        print('Wrong password provided for that user.');
        // CommanDialog.hideLoading();
      }
    }
  }

//signout
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> signOut() async {
    await _auth.signOut();
    Get.to(() => LoginScreen());
  }
}
