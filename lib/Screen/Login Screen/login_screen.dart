import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Controllers/Login%20Controller/login_controller.dart';
import 'package:vericheck_app/Screen/DashBoard%20Screen.dart/dashboard_screen.dart';
import 'package:vericheck_app/Screen/Forgot%20Password/forgot_password.dart';
import 'package:vericheck_app/Screen/Search%20Screen/search_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  LoginScreen({super.key});
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  height: 80,
                  width: 200,
                  child: Image.asset("assets/LoginScreen_imgs/Login_Logo.png")),
              // const SizedBox(height: 700),
              Align(
                heightFactor: 1.3,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Login Now",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "and let’s get started add your reviews",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600, fontSize: 15),
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
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => Container(
                  // height: 50,
                  width: Get.width,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: loginController.passwordController,
                    obscureText: !loginController.isPasswordVisible.value,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        // hintText: "E-commerce",
                        // contentPadding: const EdgeInsets.only(top: 30, left: 16),
                        hintText: "password",
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.normal),
                        filled: true,
                        suffixIcon: IconButton(
                          icon: Icon(
                            loginController.isPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            // color: ColorResources.OROCHIMARU,
                          ),
                          onPressed: () {
                            loginController.togglePasswordVisibility();
                          },
                        ),
                        contentPadding: const EdgeInsets.all(15),
                        fillColor: ColorSelect().PINKTHEORYColor),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              InkWell(
                // onTap: () {
                //   Get.toNamed(ForgotPassword.routeName);
                // },
                onTap: () {
                  Get.to(
                    ForgotPassword(),
                    transition: Transition.noTransition,
                  );
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: ColorSelect().KNIGHTSARMORCOLOR),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Get.offNamed(DashBoardScreen.routeName);
                  // Get.offNamed(DashBoardScreen.routeName);
                  Get.off(
                    DashBoardScreen(),
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
                        "Sign in",
                        style: GoogleFonts.dmSans(
                            fontSize: 18,
                            color: ColorSelect().WHITECOLOR,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                  height: 230,
                  child: Image.asset(
                      "assets/LoginScreen_imgs/LoginScreenimg.png")),
            ],
          ),
        ),
      ),
    );
  }
}
