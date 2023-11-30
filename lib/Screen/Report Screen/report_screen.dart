import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Screen/Pizza%20Hut%20Screen/pizza_hut_screen.dart';

import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Custom%20Widget/custom_widget.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class ReportScreen extends StatelessWidget {
  static const String routeName = '/reportscreen';
  const ReportScreen({super.key});

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
          "Report",
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
              // Text(
              //   "Today",
              //   style: GoogleFonts.dmSans(
              //       fontWeight: FontWeight.bold, fontSize: 18),
              // ),
              // const SizedBox(height: 20),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Reportlist.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Reportlist[index].date.toString(),
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Card(
                            // shadowColor: ColorSelect().whi,
                            elevation: 10,
                            color: ColorSelect().WHITECOLOR,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 9),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          Reportlist[index].Pizzatext,
                                          style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              Reportlist[index].Statustext,
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14),
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Container(
                                              // width: MediaQuery.of(context)
                                              //         .size
                                              //         .width *
                                              //     0.24,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: ColorSelect()
                                                    .CALCAREOUSSINTERColor,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 12,
                                                        vertical: 6),
                                                child: Center(
                                                  child: Text(
                                                    Reportlist[index]
                                                        .Completetext,
                                                    style: GoogleFonts.dmSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13,
                                                        color: ColorSelect()
                                                            .Y7KBLUEColor),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
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
                                          Reportlist[index].addresstext,
                                          style: GoogleFonts.dmSans(
                                              color: ColorSelect().BlackColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 22),
                                      child: Text(
                                        Reportlist[index].Datetext,
                                        style: GoogleFonts.dmSans(
                                            color:
                                                ColorSelect().KNIGHTSARMORCOLOR,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 22),
                                      child: Text(
                                        Reportlist[index].TimeText,
                                        style: GoogleFonts.dmSans(
                                            color:
                                                ColorSelect().KNIGHTSARMORCOLOR,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          // width: MediaQuery.of(context)
                                          //         .size
                                          //         .width *
                                          //     0.26,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: ColorSelect().LAVENDERBREEZE,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 40, vertical: 12),
                                            child: Center(
                                              child: InkWell(
                                                onTap: () => Get.toNamed(
                                                    PizzaHutScreen.routeName),
                                                child: Text(
                                                  Reportlist[index].EditText,
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 13,
                                                      color: ColorSelect()
                                                          .BlackColor),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Container(
                                          // width: MediaQuery.of(context)
                                          //         .size
                                          //         .width *
                                          //     0.26,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: ColorSelect().BRIGHTRED,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 14, vertical: 12),
                                            child: Center(
                                              child: InkWell(
                                                onTap: () => Get.toNamed(
                                                    PizzaHutScreen.routeName),
                                                child: Text(
                                                  Reportlist[index].ViewText,
                                                  style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 13,
                                                      color: ColorSelect()
                                                          .WHITECOLOR),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
