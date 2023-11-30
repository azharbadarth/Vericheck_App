import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Screen/Login%20Screen/login_screen.dart';
import 'package:vericheck_app/Screen/Pizza%20Hut%20Screen/pizza_hut_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Custom%20Widget/custom_widget.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class MyTargetScreen extends StatelessWidget {
  static const String routeName = '/mytargetscreen';
  const MyTargetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      currentTab: 2,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: ColorSelect().WHITECOLOR,
        elevation: 0.0,
        leadingWidth: 28,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "My Target",
          style: GoogleFonts.dmSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ColorSelect().BlackColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: InkWell(
              onTap: () {
                Get.dialog(
                  AlertDialog(
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
                "Total 12",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: mytargetlist.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: InkWell(
                            // onTap: () => Get.toNamed(PizzaHutScreen.routeName),
                            onTap: () {
                              Get.to(
                                PizzaHutScreen(),
                                transition: Transition.noTransition,
                              );
                            },
                            child: Card(
                              //shadowColor: ColorSelect().BlackColor,
                              elevation: 6,
                              color: ColorSelect().WHITECOLOR,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                // height: 100,
                                width: Get.width,
                                //color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4, vertical: 12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              mytargetlist[index].Text,
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            Container(
                                              // width: MediaQuery.of(context)
                                              //         .size
                                              //         .width *
                                              //     0.2,
                                              decoration: BoxDecoration(
                                                  color: ColorSelect()
                                                      .PINKTHEORYColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 6),
                                                child: Center(
                                                  child: Text(
                                                    mytargetlist[index]
                                                        .RightText,
                                                    style: GoogleFonts.dmSans(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12,
                                                        color: ColorSelect()
                                                            .BRIGHTRED),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                  "assets/DashboardScreen_imgs/dashboard_map.png"),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              mytargetlist[index].Subtext,
                                              style: GoogleFonts.dmSans(
                                                  color: ColorSelect()
                                                      .KNIGHTSARMORCOLOR,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  }),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
