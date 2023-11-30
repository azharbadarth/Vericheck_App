import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Controllers/Kitchen_Controller/kitchen_controller.dart';
import 'package:vericheck_app/Screen/Login%20Screen/login_screen.dart';
import 'package:vericheck_app/Screen/Question_Details_Screen.dart/question_details_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Custom%20Widget/custom_widget.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class KitchenScreen extends StatelessWidget {
  static const String routeName = '/kitchenscreen';
  KitchenScreen({super.key});
  KitchenController kitchenController = Get.put(KitchenController());
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
                "Kitchen",
                style: GoogleFonts.dmSans(
                    fontSize: 27, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
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
                                    text: "of outlet (1-5 Scale)",
                                    style: GoogleFonts.montserrat(fontSize: 15))
                              ])),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "4.5",
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
              const SizedBox(
                height: 12,
              ),
              Text(
                "Your kitchen reviews has been submit you can see details in report screen and you can also  edit reviews.",
                style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: ColorSelect().KNIGHTSARMORCOLOR),
              ),
              const SizedBox(height: 8),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: Kitchenlist.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Card(
                            elevation: 6,
                            child: InkWell(
                              // onTap: () {
                              //   Get.toNamed(
                              //     QuestionDetailsScreen.routeName,
                              //     arguments: Kitchenlist[index],

                              //     //  argument data
                              //   );
                              // },
                              onTap: () {
                                Get.to(
                                  QuestionDetailsScreen(),
                                  transition: Transition.noTransition,
                                  arguments: Kitchenlist[index],
                                );
                              },
                              child: Container(
                                width: Get.width,
                                decoration: BoxDecoration(
                                    color: ColorSelect().WHITECOLOR,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 16, right: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 10),
                                          Text(
                                            Kitchenlist[index].Questionno,
                                            style: GoogleFonts.dmSans(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          const SizedBox(width: 8),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 6),
                                            child: Text(
                                              Kitchenlist[index].Questiontext,
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Obx(
                                        () => InkWell(
                                          onTap: () {
                                            kitchenController.changecolor();
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 22),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                    Kitchenlist[index].imgs,
                                                    color: kitchenController
                                                            .isClicked.value
                                                        ? ColorSelect()
                                                            .SKINNYJEANSColor
                                                        : ColorSelect()
                                                            .SMOKESCREENColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.dialog(
                    AlertDialog(
                      backgroundColor: ColorSelect().WHITECOLOR,
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
                            "Thankyou your Reviews has been added.",
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
                      "Done",
                      style: GoogleFonts.dmSans(
                          fontSize: 18,
                          color: ColorSelect().WHITECOLOR,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
