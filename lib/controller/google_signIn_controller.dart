import 'package:carsharing/Views/Screens/BottomNavScreens/bottom_nav.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController extends GetxController {
//signInWithGoogle function
  signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    return await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((value) async {
      FirebaseFirestore.instance
          .collection('usersSignInWithGoogle')
          .doc(value.user!.displayName)
          .set({
        'id': value.user!.uid,
        'name': value.user!.displayName,
        'email': value.user!.email,
      });
      Get.to(BottomNavigation());
    });
  }
}
