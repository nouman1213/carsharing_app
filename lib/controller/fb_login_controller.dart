import 'package:carsharing/Views/Screens/BottomNavScreens/bottom_nav.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';

class FacebookController extends GetxController {
  facebookLogin() async {
    print("FaceBook");
    try {
      final result =
          await FacebookAuth.i.login(permissions: ['public_profile', 'email']);
      if (result.status == LoginStatus.success) {
        final userData = await FacebookAuth.i.getUserData();
        Get.to(BottomNavigation());
        print(userData);
      }
    } catch (error) {
      print(error);
    }
  }
}
