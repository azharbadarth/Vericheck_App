import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Controllers/Create%20Password%20Controller/create_password_controller.dart';
import 'package:vericheck_app/Screen/successfull%20Screen/successfull_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';

class CreatePassword extends StatelessWidget {
  static const String routeName = '/createpassword';
  CreatePassword({super.key});
  CreatePasswordController createPasswordController =
      Get.put(CreatePasswordController());
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create New Password",
              style:
                  GoogleFonts.dmSans(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 8),
            Text(
              "Enter your phone number to received\npassword reset instruction",
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w600, fontSize: 15, height: 1.4),
            ),
            const SizedBox(height: 20),
            Obx(
              () => Container(
                height: 50,
                width: Get.width,
                child: TextFormField(
                  controller: createPasswordController.passwordController,
                  obscureText:
                      !createPasswordController.isPasswordVisible.value,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      // hintText: "E-commerce",
                      // contentPadding: const EdgeInsets.only(top: 30, left: 16),
                      hintStyle: GoogleFonts.montserrat(
                          fontSize: 16, fontWeight: FontWeight.normal),
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(
                          createPasswordController.isPasswordVisible.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          // color: ColorResources.OROCHIMARU,
                        ),
                        onPressed: () {
                          createPasswordController.togglePasswordVisibility();
                        },
                      ),
                      hintText: "password",
                      contentPadding: const EdgeInsets.all(15),
                      fillColor: ColorSelect().PINKTHEORYColor),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => Container(
                // height: 50,
                width: Get.width,
                child: TextFormField(
                  controller: createPasswordController.repasswordController,
                  obscureText:
                      !createPasswordController.isPasswordVisibleTwo.value,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      // hintText: "E-commerce",
                      // contentPadding: const EdgeInsets.only(top: 30, left: 16),
                      hintStyle: GoogleFonts.montserrat(
                          fontSize: 16, fontWeight: FontWeight.normal),
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(
                          createPasswordController.isPasswordVisibleTwo.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          // color: ColorResources.OROCHIMARU,
                        ),
                        onPressed: () {
                          createPasswordController.isPasswordVisibleTwo();
                        },
                      ),
                      hintText: "Re-Enter Password",
                      contentPadding: const EdgeInsets.all(15),
                      fillColor: ColorSelect().PINKTHEORYColor),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              // onTap: () {
              //   Get.toNamed(SuccessFullScreen.routeName);
              // },
              onTap: () {
                Get.to(
                  SuccessFullScreen(),
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
                      "Create",
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
    );
  }
}
