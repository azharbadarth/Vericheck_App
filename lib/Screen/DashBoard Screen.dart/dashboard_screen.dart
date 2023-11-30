import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Screen/Login%20Screen/login_screen.dart';
import 'package:vericheck_app/Screen/My%20Target%20Screen/my_target_screen.dart';
import 'package:vericheck_app/Screen/Report%20Screen/report_screen.dart';
import 'package:vericheck_app/Screen/Start%20Verification/start_verification.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class DashBoardScreen extends StatelessWidget {
  static const String routeName = '/dashboardscreen';
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      currentTab: 1,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: ColorSelect().WHITECOLOR,
        leading: CircleAvatar(
          radius: 0,
          child: Image.asset(
              "assets/DashboardScreen_imgs/dashboard_appbar_img.png"),
        ),
        leadingWidth: 100, // d

        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Azhar Uddin",
              style:
                  GoogleFonts.dmSans(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Good Morning",
              style: GoogleFonts.dmSans(
                  fontSize: 14,
                  color: ColorSelect().KNIGHTSARMORCOLOR,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        titleSpacing: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: InkWell(
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    backgroundColor: ColorSelect().WHITECOLOR,
                    contentPadding: const EdgeInsets.only(top: 20, bottom: 40),
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
                                "assets/DashboardScreen_imgs/dashboard_dialogue_img.png"),
                            // fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Are you sure!",
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
                          "You want to logout your account\nfrom this device",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                              color: ColorSelect().KNIGHTSARMORCOLOR,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => Get.back(),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: ColorSelect().LAVENDERBREEZE,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: ColorSelect().BlackColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              onTap: () => Get.offNamed(LoginScreen.routeName),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: ColorSelect().BRIGHTRED,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Container(
                  height: 30,
                  child: Image.asset(
                      "assets/DashboardScreen_imgs/logout-icon.png")),
            ),
          ),
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
              Image.asset(
                  "assets/DashboardScreen_imgs/dashboard_Slider_img.png"),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  // Get.toNamed(StartVerification.routeName);
                  Get.to(
                    StartVerification(),
                    transition: Transition.noTransition,
                  );
                },
                child: Container(
                  // height: 54,
                  decoration: BoxDecoration(
                      color: ColorSelect().BRIGHTRED,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Start Verification",
                          style: GoogleFonts.dmSans(
                              color: ColorSelect().WHITECOLOR,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                              "assets/DashboardScreen_imgs/dashboardcheck_img.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.toNamed(MyTargetScreen.routeName),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                          color: ColorSelect().PINKTHEORYColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 34, horizontal: 23),
                        child: Column(
                          children: [
                            // const SizedBox(height: 10),
                            SizedBox(
                              height: 44,
                              width: 44,
                              child: Image.asset(
                                "assets/DashboardScreen_imgs/dashboard_target_img.png",
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "My Target",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    // onTap: () => Get.toNamed(ReportScreen.routeName),
                    onTap: () {
                      Get.to(
                        ReportScreen(),
                        transition: Transition.noTransition,
                      );
                    },
                    child: Container(
                      // height: 150,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                          color: ColorSelect().PINKTHEORYColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 20),
                        child: Column(
                          children: [
                            // const SizedBox(height: 10),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                  "assets/DashboardScreen_imgs/dashboard_report_img.png"),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Report",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Overview",
                style: GoogleFonts.dmSans(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Here you can see your over all task",
                style: GoogleFonts.dmSans(
                    fontSize: 14,
                    color: ColorSelect().KNIGHTSARMORCOLOR,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: ColorSelect().HOTOTBUNNYColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            "Completed",
                            style: GoogleFonts.dmSans(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 14),
                          Center(
                            child: CircularPercentIndicator(
                              radius: 46,
                              lineWidth: 20,
                              percent: 0.2,
                              progressColor: ColorSelect().WHITECOLOR,
                              backgroundColor: ColorSelect().JOCOSEJADEColor,
                              circularStrokeCap: CircularStrokeCap.square,
                              center: Text("650",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: ColorSelect().HOTOTBUNNYColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 20),
                      child: Column(
                        children: [
                          // const SizedBox(height: 10),
                          Text(
                            "Pending",
                            style: GoogleFonts.dmSans(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 14),
                          Center(
                            child: CircularPercentIndicator(
                              radius: 44,
                              lineWidth: 16,
                              percent: 0.2,
                              progressColor: ColorSelect().WHITECOLOR,
                              backgroundColor: ColorSelect().KUMQUATColor,
                              circularStrokeCap: CircularStrokeCap.square,
                              center: Text("150",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Kitchen",
                style: GoogleFonts.dmSans(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: ColorSelect().HOTOTBUNNYColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            "Completed",
                            style: GoogleFonts.dmSans(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 14),
                          Center(
                            child: CircularPercentIndicator(
                              radius: 46,
                              lineWidth: 20,
                              percent: 0.2,
                              progressColor: ColorSelect().WHITECOLOR,
                              backgroundColor: ColorSelect().JOCOSEJADEColor,
                              circularStrokeCap: CircularStrokeCap.square,
                              center: Text("650",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: ColorSelect().HOTOTBUNNYColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 20),
                      child: Column(
                        children: [
                          // const SizedBox(height: 10),
                          Text(
                            "Pending",
                            style: GoogleFonts.dmSans(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 14),
                          Center(
                            child: CircularPercentIndicator(
                              radius: 44,
                              lineWidth: 16,
                              percent: 0.2,
                              progressColor: ColorSelect().WHITECOLOR,
                              backgroundColor: ColorSelect().KUMQUATColor,
                              circularStrokeCap: CircularStrokeCap.square,
                              center: Text("150",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Dine In",
                style: GoogleFonts.dmSans(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: ColorSelect().HOTOTBUNNYColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            "Completed",
                            style: GoogleFonts.dmSans(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 14),
                          Center(
                            child: CircularPercentIndicator(
                              radius: 46,
                              lineWidth: 20,
                              percent: 0.2,
                              progressColor: ColorSelect().WHITECOLOR,
                              backgroundColor: ColorSelect().JOCOSEJADEColor,
                              circularStrokeCap: CircularStrokeCap.square,
                              center: Text("650",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: ColorSelect().HOTOTBUNNYColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 20),
                      child: Column(
                        children: [
                          // const SizedBox(height: 10),
                          Text(
                            "Pending",
                            style: GoogleFonts.dmSans(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 14),
                          Center(
                            child: CircularPercentIndicator(
                              radius: 44,
                              lineWidth: 16,
                              percent: 0.2,
                              progressColor: ColorSelect().WHITECOLOR,
                              backgroundColor: ColorSelect().KUMQUATColor,
                              circularStrokeCap: CircularStrokeCap.square,
                              center: Text("150",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
