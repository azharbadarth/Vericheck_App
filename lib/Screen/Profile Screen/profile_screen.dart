import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Screen/Change%20Password%20Screen/change_password_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profilescreen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      currentTab: 4,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: ColorSelect().WHITECOLOR,
        elevation: 0.0,
        leadingWidth: 28,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Profile",
          style: GoogleFonts.dmSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ColorSelect().BlackColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: SizedBox(
                height: 30,
                child:
                    Image.asset("assets/DashboardScreen_imgs/logout-icon.png")),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  SizedBox(
                      height: 70,
                      child: Image.asset(
                        "assets/Profile_Screen_imgs/profile_screen_img.png",
                      )),
                  const SizedBox(width: 14),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AZHAR DIN",
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          // color: ColorResources.WhiteColor
                        ),
                      ),
                      // const SizedBox(
                      //   height: 2,
                      // ),
                      Text(
                        "Flutter Developer",
                        style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ColorSelect().KNIGHTSARMORCOLOR
                            // color: ColorResources.OROCHIMARU
                            ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Email",
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorSelect().BlackColor,

                  // color: ColorResources.OROCHIMARU
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  //set border radius more than 50% of height and width to make circle
                ),
                elevation: 6,
                color: ColorSelect().WHITECOLOR,
                child: Container(
                  // height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorSelect().WHITECOLOR,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.top,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "azharud27@gmail.com",
                      contentPadding: const EdgeInsets.all(15),
                      hintStyle: GoogleFonts.dmSans(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: ColorSelect().KNIGHTSARMORCOLOR),
                      filled: true,
                      fillColor: ColorSelect().WHITECOLOR,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                "Phone Number",
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorSelect().BlackColor,

                  // color: ColorResources.OROCHIMARU
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  //set border radius more than 50% of height and width to make circle
                ),
                elevation: 6,
                color: ColorSelect().WHITECOLOR,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorSelect().WHITECOLOR,
                      borderRadius: BorderRadius.circular(10)),
                  // height: 50,
                  width: Get.width,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.visiblePassword,
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
                      fillColor: ColorSelect().WHITECOLOR,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                "Password",
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorSelect().BlackColor,

                  // color: ColorResources.OROCHIMARU
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  //set border radius more than 50% of height and width to make circle
                ),
                elevation: 10,
                color: ColorSelect().WHITECOLOR,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorSelect().WHITECOLOR,
                      borderRadius: BorderRadius.circular(20)),
                  // height: 50,
                  width: Get.width,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Password",
                      contentPadding: const EdgeInsets.all(15),
                      hintStyle: GoogleFonts.dmSans(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: ColorSelect().KNIGHTSARMORCOLOR),
                      filled: true,
                      fillColor: ColorSelect().WHITECOLOR,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Get.toNamed(ChangePassword.routeName);
                  Get.to(
                    ChangePassword(),
                    transition: Transition.noTransition,
                  );
                },
                child: Container(
                  // height: 48,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorSelect().BRIGHTRED,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(
                        "Change Password",
                        style: GoogleFonts.dmSans(
                            fontSize: 18,
                            color: ColorSelect().WHITECOLOR,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
