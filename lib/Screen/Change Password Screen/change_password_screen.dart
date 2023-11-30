import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Controllers/Change%20Password%20Controller/change_password_controller.dart';
import 'package:vericheck_app/Screen/Profile%20Screen/profile_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class ChangePassword extends StatelessWidget {
  static const String routeName = '/changepassword';
  ChangePassword({super.key});

  ChangePasswordController changePasswordController =
      Get.put(ChangePasswordController());
  @override
  Widget build(BuildContext context) {
    return Layout(
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
              const SizedBox(
                height: 20,
              ),
              Text(
                "Change your password",
                style: GoogleFonts.dmSans(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Here you can generate your new password",
                style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorSelect().KNIGHTSARMORCOLOR
                    // color: ColorResources.OROCHIMARU
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Old Password",
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

              Obx(
                () => Card(
                  elevation: 6,
                  child: Container(
                    // height: 50,
                    width: Get.width,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      controller:
                          changePasswordController.oldpasswordController,
                      obscureText:
                          !changePasswordController.oldPasswordVisible.value,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          // hintText: "E-commerce",
                          // contentPadding: const EdgeInsets.only(top: 30, left: 16),
                          hintStyle: GoogleFonts.dmSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                          filled: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              changePasswordController.oldPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              // color: ColorResources.OROCHIMARU,
                            ),
                            onPressed: () {
                              changePasswordController
                                  .toggleoldPasswordVisibility();
                            },
                          ),
                          hintText: "Old password",
                          contentPadding: const EdgeInsets.all(15),
                          fillColor: ColorSelect().WHITECOLOR),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                "New Password",
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

              Obx(
                () => Card(
                  elevation: 6,
                  child: Container(
                    // height: 50,
                    width: Get.width,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      controller:
                          changePasswordController.newpasswordController,
                      obscureText:
                          !changePasswordController.newPasswordVisible.value,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          // hintText: "E-commerce",
                          // contentPadding: const EdgeInsets.only(top: 30, left: 16),
                          hintStyle: GoogleFonts.dmSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                          filled: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              changePasswordController.newPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              // color: ColorResources.OROCHIMARU,
                            ),
                            onPressed: () {
                              changePasswordController
                                  .togglenewPasswordVisibility();
                            },
                          ),
                          hintText: "New password",
                          contentPadding: const EdgeInsets.all(15),
                          fillColor: ColorSelect().WHITECOLOR),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                "Confirm Password",
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

              Obx(
                () => Card(
                  elevation: 6,
                  child: Container(
                    // height: 50,
                    width: Get.width,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      controller:
                          changePasswordController.oldpasswordController,
                      obscureText: !changePasswordController
                          .confirmPasswordVisible.value,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          // hintText: "E-commerce",
                          // contentPadding: const EdgeInsets.only(top: 30, left: 16),
                          hintStyle: GoogleFonts.dmSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                          filled: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              changePasswordController
                                      .confirmPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              // color: ColorResources.OROCHIMARU,
                            ),
                            onPressed: () {
                              changePasswordController
                                  .toggleconfirmPasswordVisibility();
                            },
                          ),
                          hintText: "Confirm Password",
                          contentPadding: const EdgeInsets.all(15),
                          fillColor: ColorSelect().WHITECOLOR),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.dialog(
                    AlertDialog(
                      contentPadding:
                          const EdgeInsets.only(top: 20, bottom: 40),
                      insetPadding: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      title: Container(
                        width: Get.width,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 0, top: 20), // Border radius
                          child: Container(
                            height: 120,
                            child: const Image(
                              image: AssetImage(
                                  "assets/ChangePassword_imgs/ChangePassword_Dialogue_img.png"),
                              // fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Successfully!",
                            style: GoogleFonts.dmSans(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              // color: ColorResource().clr2
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Your password has been changed",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                                color: ColorSelect().KNIGHTSARMORCOLOR,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            // onTap: () => Get.offNamed(LoginScreen.routeName),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: ColorSelect().BRIGHTRED,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                  onTap: () {
                                    Get.offNamed(ProfileScreen.routeName);
                                  },
                                  child: Center(
                                    child: Text(
                                      "Ok",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: ColorSelect().WHITECOLOR),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                        "Updated",
                        style: GoogleFonts.dmSans(
                            fontSize: 18,
                            color: ColorSelect().WHITECOLOR,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              // Card(
              //   elevation: 10,
              //   color: ColorSelect().WHITECOLOR,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: ColorSelect().WHITECOLOR,
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     height: 50,
              //     width: Get.width,
              //     child: TextField(
              //       textAlignVertical: TextAlignVertical.center,
              //       obscureText: true,
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(8),
              //           borderSide: BorderSide.none,
              //         ),
              //         hintText: "Password",
              //         contentPadding: const EdgeInsets.only(top: 30, left: 16),
              //         hintStyle: GoogleFonts.dmSans(
              //             fontSize: 16,
              //             fontWeight: FontWeight.normal,
              //             color: ColorSelect().KNIGHTSARMORCOLOR),
              //         filled: true,
              //         fillColor: ColorSelect().WHITECOLOR,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
