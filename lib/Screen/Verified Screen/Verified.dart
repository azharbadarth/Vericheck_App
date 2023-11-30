import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vericheck_app/Screen/Create%20Password%20Screen/create_password_screen.dart';
import 'package:vericheck_app/Screen/Forgot%20Password/forgot_password.dart';

class VerifiedScreen extends StatelessWidget {
  static const String routeName = '/verifiedcreen';
  VerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        // onTap: () {
        //   // Navigator.of(context).pop();
        //   Get.toNamed(CreatePassword.routeName);
        // },
        onTap: () {
          Get.to(
            CreatePassword(),
            transition: Transition.noTransition,
          );
        },
        child: Image.asset(
          "assets/OtpScreen_imgs/Verified_Screen_img.png",
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
