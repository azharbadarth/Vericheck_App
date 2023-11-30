import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Controllers/Start%20Verification%20Controller/start_verification_controller.dart';
import 'package:vericheck_app/Screen/Pizza%20Hut%20Screen/pizza_hut_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class StartVerification extends StatelessWidget {
  static const String routeName = '/startverification';
  StartVerification({super.key});
  StartVerificationController startVerificationController =
      Get.put(StartVerificationController());
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
          "Start Verification",
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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Obx(() => Card(
                    color: ColorSelect().WHITECOLOR,
                    elevation: 6,
                    child: DropdownButtonHideUnderline(
                      child: Container(
                        // height: 56,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: ColorSelect().WHITECOLOR,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4.5,
                          ),
                          child: DropdownButton(
                            value: startVerificationController
                                .selectcompanyOption.value,
                            style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: ColorSelect().BlackColor),
                            onChanged: (newValue) {
                              startVerificationController
                                  .changecompanyOption(newValue!);
                            },
                            items: startVerificationController
                                .selectcompanyDropdown
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: ColorSelect().BlackColor),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Obx(() => Card(
                    color: ColorSelect().WHITECOLOR,
                    elevation: 6,
                    child: DropdownButtonHideUnderline(
                      child: Container(
                        // height: 56,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: ColorSelect().WHITECOLOR,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4.5,
                          ),
                          child: DropdownButton(
                            value: startVerificationController
                                .selectbranchOption.value,
                            style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: ColorSelect().BlackColor),
                            onChanged: (newValue) {
                              startVerificationController
                                  .changebranchOption(newValue!);
                            },
                            items: startVerificationController
                                .selectbranchDropdown
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: ColorSelect().BlackColor),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                // onTap: () => Get.toNamed(PizzaHutScreen.routeName),
                onTap: () {
                  Get.to(
                    PizzaHutScreen(),
                    transition: Transition.noTransition,
                  );
                },
                child: Container(
                  height: 48,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorSelect().BRIGHTRED,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Start Verification",
                      style: GoogleFonts.dmSans(
                          fontSize: 18,
                          color: ColorSelect().WHITECOLOR,
                          fontWeight: FontWeight.w600),
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
