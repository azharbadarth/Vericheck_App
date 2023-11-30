import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vericheck_app/Screen/Login%20Screen/login_screen.dart';

class SuccessFullScreen extends StatelessWidget {
  static const String routeName = '/successfullscreen';
  const SuccessFullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        // onTap: () {
        //   // Navigator.of(context).pop();
        //   Get.toNamed(LoginScreen.routeName);
        // },

        onTap: () {
          Get.to(
            LoginScreen(),
            transition: Transition.noTransition,
          );
        },
        child: Image.asset(
          "assets/SuccessFullScreen_imgs/Succesfully_Screen_img.png",
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
