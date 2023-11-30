import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Controllers/Otp%20Controller/otp_controller.dart';
import 'package:vericheck_app/Screen/Verified%20Screen/Verified.dart';

import 'package:vericheck_app/Utils/Colors/colors.dart';

class OtpScreen extends StatelessWidget {
  static const String routeName = '/otpscreen';
  OtpScreen({super.key});
  OtpController otpController = Get.put(OtpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: ColorSelect().WHITECOLOR,
        elevation: 0.0,
        leadingWidth: 28,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "OTP",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const SizedBox(height: 8),
              Text(
                "Code is sent to 03113294921\nDidn’t receive code? Request Again",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600, fontSize: 15, height: 1.4),
              ),
              const SizedBox(height: 20),
              Container(
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) => SizedBox(
                      width: 55,
                      height: 55,
                      child: TextField(
                        controller: otpController.otpControllers[index],
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.top,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        onChanged: (value) =>
                            otpController.onOtpChange(value, index),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: ColorSelect().PINKTHEORYColor,
                          counter: Offstage(), // Hide the character count
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                // onTap: () {
                //   Get.toNamed(VerifiedScreen.routeName);
                // },
                onTap: () {
                  Get.to(
                    VerifiedScreen(),
                    transition: Transition.noTransition,
                  );
                },
                child: Container(
                  // height: 48,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorSelect().BRIGHTRED,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(
                        "Verify",
                        style: GoogleFonts.dmSans(
                            fontSize: 18,
                            color: ColorSelect().WHITECOLOR,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              // Spacer(),
              Align(
                alignment: Alignment.center,
                heightFactor: 2.4,
                child: SizedBox(
                    height: 230,
                    child:
                        Image.asset("assets/OtpScreen_imgs/OtpScreenimg.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
