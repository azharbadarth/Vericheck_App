import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Screen/Otp%20Screen/otp_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';

class ForgotPassword extends StatelessWidget {
  static const String routeName = '/forgotpassword';
  const ForgotPassword({super.key});

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
                "Forgot Password",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const SizedBox(height: 8),
              Text(
                "Enter your phone number to received\npassword reset instruction",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600, fontSize: 15, height: 1.4),
              ),
              const SizedBox(height: 20),
              Container(
                // height: 50,
                width: Get.width,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Phone Number",
                    contentPadding: const EdgeInsets.all(15),
                    hintStyle: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: ColorSelect().KNIGHTSARMORCOLOR),
                    filled: true,
                    fillColor: ColorSelect().PINKTHEORYColor,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                // onTap: () {
                //   Get.toNamed(OtpScreen.routeName);
                // },
                onTap: () {
                  Get.to(
                    OtpScreen(),
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
                        "Send",
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
                    child: Image.asset(
                        "assets/ForgoPassword_imgs/forgotScreen_img.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
