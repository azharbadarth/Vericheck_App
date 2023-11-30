import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Screen/Kitchen%20Screen/kitchen_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Custom%20Widget/custom_widget.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class PizzaHutScreen extends StatelessWidget {
  static const String routeName = '/pizzahutscreen';
  const PizzaHutScreen({super.key});

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
          "Pizza Hut",
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Branch",
                style: GoogleFonts.dmSans(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                        "assets/DashboardScreen_imgs/dashboard_map.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "5/1, Boating Basin, Clifton, Block-5, Karachi,\nPakistan",
                    style: GoogleFonts.dmSans(
                        color: ColorSelect().KNIGHTSARMORCOLOR,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Your reviews task has been complete",
                    style: GoogleFonts.dmSans(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 14),
                  Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                          "assets/PizzaHut_Screen_imgs/Check_icon.png"))
                ],
              ),
              SizedBox(height: 8),
              Card(
                elevation: 6,
                child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorSelect().WHITECOLOR),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(TextSpan(
                              text: "Overall Rating ",
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                              children: <InlineSpan>[
                                TextSpan(
                                    text: "of outlet ( 1-5 Scale )",
                                    style: GoogleFonts.montserrat(fontSize: 15))
                              ])),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "4.3",
                                style: GoogleFonts.dmSans(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 4),
                              Container(
                                height: 28,
                                width: 28,
                                child: Image.asset(
                                    "assets/QuestionDetail_Screen_imgs/solar_star-bold.png"),
                              ),
                              const SizedBox(width: 4),
                              Container(
                                height: 28,
                                width: 28,
                                child: Image.asset(
                                    "assets/QuestionDetail_Screen_imgs/solar_star-bold.png"),
                              ),
                              const SizedBox(width: 4),
                              Container(
                                height: 28,
                                width: 28,
                                child: Image.asset(
                                    "assets/QuestionDetail_Screen_imgs/solar_star-bold.png"),
                              ),
                              const SizedBox(width: 4),
                              Container(
                                height: 28,
                                width: 28,
                                child: Image.asset(
                                    "assets/QuestionDetail_Screen_imgs/solar_star-bold.png"),
                              ),
                              const SizedBox(width: 4),
                              Container(
                                height: 24,
                                width: 24,
                                child: Image.asset(
                                    "assets/QuestionDetail_Screen_imgs/solar_star.png"),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                "Good",
                                style: GoogleFonts.dmSans(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(height: 20),
              Text(
                "Categories",
                style: GoogleFonts.dmSans(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Card(
              //   elevation: 10,
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: ColorSelect().WHITECOLOR,
              //         borderRadius: BorderRadius.circular(10)),
              //     child: Padding(
              //       padding: const EdgeInsets.all(3.0),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.only(top: 8, left: 12),
              //             child: Container(
              //                 height: 48,
              //                 child: Image.asset(
              //                     "assets/PizzaHut_Screen_imgs/kitchen_icon.png")),
              //           ),
              //           const SizedBox(
              //             width: 13,
              //           ),
              //           Text(
              //             "Kitchen",
              //             style: GoogleFonts.dmSans(
              //                 fontSize: 18, fontWeight: FontWeight.bold),
              //           )
              //         ],
              //       ),
              //     ),
              //   ),
              // )
              InkWell(
                // onTap: () => Get.toNamed(KitchenScreen.routeName),
                onTap: () {
                  Get.to(
                    KitchenScreen(),
                    transition: Transition.noTransition,
                  );
                },
                child: CustomWidgetPizzHut(
                    img: "assets/PizzaHut_Screen_imgs/kitchen_icon.png",
                    txt: "Kitchen"),
              ),

              const SizedBox(
                height: 10,
              ),
              InkWell(
                // onTap: () => Get.toNamed(KitchenScreen.routeName),
                onTap: () {
                  Get.to(
                    KitchenScreen(),
                    transition: Transition.noTransition,
                  );
                },
                child: CustomWidgetPizzHut(
                  img: "assets/PizzaHut_Screen_imgs/Reception_icon.png",
                  txt: "Reception",
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              InkWell(
                // onTap: () => Get.toNamed(KitchenScreen.routeName),
                onTap: () {
                  Get.to(
                    KitchenScreen(),
                    transition: Transition.noTransition,
                  );
                },
                child: CustomWidgetPizzHut(
                  img: "assets/PizzaHut_Screen_imgs/Dine_In_icon.png",
                  txt: "Dine In",
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              InkWell(
                // onTap: () => Get.toNamed(KitchenScreen.routeName),
                onTap: () {
                  Get.to(
                    KitchenScreen(),
                    transition: Transition.noTransition,
                  );
                },
                child: CustomWidgetPizzHut(
                    img: "assets/PizzaHut_Screen_imgs/Table_craft_icon.png",
                    txt: "Table Craft"),
              ),

              const SizedBox(
                height: 10,
              ),

              InkWell(
                // onTap: () => Get.toNamed(KitchenScreen.routeName),
                onTap: () {
                  Get.to(
                    KitchenScreen(),
                    transition: Transition.noTransition,
                  );
                },
                child: CustomWidgetPizzHut(
                    img: "assets/PizzaHut_Screen_imgs/Dine_Delight_icon.png",
                    txt: "Dine Delight"),
              ),

              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Get.dialog(
                    AlertDialog(
                      backgroundColor: Colors.white,
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
                            "Success!",
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
                            "Thankyou your all Reviews has been added.",
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
                                    Get.back();
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
                  height: 48,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorSelect().BRIGHTRED,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Complete",
                      style: GoogleFonts.dmSans(
                          fontSize: 18,
                          color: ColorSelect().WHITECOLOR,
                          fontWeight: FontWeight.w500),
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
