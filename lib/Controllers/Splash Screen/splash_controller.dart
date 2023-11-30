import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vericheck_app/Screen/Login%20Screen/login_screen.dart';
// import 'package:rider_app/Screens/Home%20Screen/home_screen.dart';

class SplashController extends GetxController {
  changescreen() async {
    await Future.delayed(
      const Duration(seconds: 4),
      () {
        Get.offNamed(LoginScreen.routeName);
      },
    );
    update();
  }

  @override
  void onInit() {
    changescreen();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    changescreen();
    // TODO: implement onClose
    super.onClose();
  }
}
