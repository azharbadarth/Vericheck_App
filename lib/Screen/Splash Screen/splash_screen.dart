import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vericheck_app/Controllers/Splash%20Screen/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder(
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Image.asset(
          "assets/SplashScreen_img/Splash Screen.png",
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    ));
  }
}
