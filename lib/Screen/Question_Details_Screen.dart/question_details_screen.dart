import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Controllers/Question%20Details%20Controller/question_details_controller.dart';
import 'package:vericheck_app/Screen/Kitchen%20Screen/kitchen_screen.dart';
// import 'package:vericheck_app/Screen/Recording/Camera_Controller.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class QuestionDetailsScreen extends StatelessWidget {
  static const String routeName = '/questiondetailsscreen';

  QuestionDetailsScreen({
    super.key,
  });
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    Get.arguments.Questionno;
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
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Kitchen",
                style: GoogleFonts.dmSans(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 6,
                color: ColorSelect().WHITECOLOR,
                child: Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorSelect().WHITECOLOR),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Get.arguments.Questionno.toString(),
                                style: GoogleFonts.dmSans(
                                    fontSize: 28, fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 8,
                                ),
                                child: Text(
                                  "Lorem Ipsum has been the industry's\nstandard dummy text ever since?",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              child: Image.asset(
                                  "assets/QuestionDetail_Screen_imgs/solar_star-bold.png"),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              height: 36,
                              width: 36,
                              child: Image.asset(
                                  "assets/QuestionDetail_Screen_imgs/solar_star-bold.png"),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              height: 36,
                              width: 36,
                              child: Image.asset(
                                  "assets/QuestionDetail_Screen_imgs/solar_star-bold.png"),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              height: 36,
                              width: 36,
                              child: Image.asset(
                                  "assets/QuestionDetail_Screen_imgs/solar_star-bold.png"),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                  "assets/QuestionDetail_Screen_imgs/solar_star.png"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Write Comment",
                style: GoogleFonts.dmSans(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 6),
              Card(
                elevation: 6,
                child: Container(
                  // height: 50,
                  width: Get.width,
                  child: TextField(
                    style: const TextStyle(fontSize: 20.0),
                    textAlignVertical: TextAlignVertical.top,
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 2,
                    cursorColor: Colors.black,
                    cursorHeight: 30,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),

                      // contentPadding: const EdgeInsets
                      //     .only(
                      //     top: 30,
                      //     left:
                      //         16),
                      // hintText: "sssssss",

                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 12),
                      hintStyle: GoogleFonts.dmSans(
                          fontSize: 11,
                          color: ColorSelect().BRIGHTRED,
                          fontWeight: FontWeight.normal),
                      filled: true,

                      fillColor: ColorSelect().WHITECOLOR,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Record Audio",
                style: GoogleFonts.dmSans(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 6,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorSelect().WHITECOLOR,
                      borderRadius: BorderRadius.circular(10)),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          height: 34,
                          width: 34,
                          child: Image.asset(
                              "assets/QuestionDetail_Screen_imgs/QuestionDetail_audio-img.png"),
                        ),
                      )),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Captured Image",
                            style: GoogleFonts.dmSans(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          InkWell(
                            onTap: () {
                              imagePickerController.imagepath.isNotEmpty
                                  ? FileImage(File(imagePickerController
                                      .imagepath
                                      .toString()))
                                  : null;
                              imagePickerController.getImage();
                            },
                            child: Card(
                              color: ColorSelect().WHITECOLOR,
                              elevation: 6,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.40,
                                decoration: BoxDecoration(
                                    color: ColorSelect().WHITECOLOR,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(34.0),
                                  child: Container(
                                    height: 54,
                                    width: 54,
                                    child: Image.asset(
                                        "assets/QuestionDetail_Screen_imgs/QuestionDetail_Camera_img.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Upload Video",
                            style: GoogleFonts.dmSans(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          InkWell(
                            onTap: () {
                              imagePickerController.videopath.isNotEmpty
                                  ? FileImage(File(imagePickerController
                                      .videopath
                                      .toString()))
                                  : null;
                              imagePickerController.getVideo();
                            },
                            child: Card(
                              color: ColorSelect().WHITECOLOR,
                              elevation: 6,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.40,
                                decoration: BoxDecoration(
                                    color: ColorSelect().WHITECOLOR,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(34.0),
                                  child: Container(
                                    height: 54,
                                    width: 54,
                                    child: Image.asset(
                                        "assets/QuestionDetail_Screen_imgs/QuestionDetail_video_img.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              InkWell(
                onTap: () {
                  // // Get.offNamed(DashBoardScreen.routeName);
                  Get.toNamed(KitchenScreen.routeName);
                },
                child: Container(
                  height: 48,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorSelect().BRIGHTRED,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: GoogleFonts.dmSans(
                          fontSize: 18,
                          color: ColorSelect().WHITECOLOR,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 34,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
