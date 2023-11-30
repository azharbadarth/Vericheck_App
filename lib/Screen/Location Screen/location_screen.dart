import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Controllers/Location%20Screen%20Controller/location_screen_Controller.dart';
import 'package:vericheck_app/Screen/Login%20Screen/login_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/locationscreen';
  LocationScreen({super.key});
  LocationController locationController = Get.put(LocationController());
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBar(
        backgroundColor: ColorSelect().WHITECOLOR,
        elevation: 0.0,
        leadingWidth: 28,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Location",
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
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              SizedBox(
                  height: 260,
                  width: Get.width,
                  child: Image.asset(
                      "assets/LocationScreen_imgs/Location_Screen_image.png")),
              const SizedBox(height: 40),
              Obx(
                () => Text(
                  // "Location",
                  locationController.Changehead.value ? "Location" : "Failed",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: ColorSelect().BlackColor),
                ),
              ),
              const SizedBox(height: 12),
              Obx(
                () => Text(
                  locationController.Changeloct.value
                      ? "Please turn on your location then you will\nstart your processe"
                      : "You are not in the pizza hurt location",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: ColorSelect().KNIGHTSARMORCOLOR),
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => Visibility(
                  visible: locationController.dropdownDataVisible.value,
                  child: Text(
                    "Pizza Hurt",
                    style: GoogleFonts.dmSans(
                        fontSize: 18,
                        color: ColorSelect().BlackColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Obx(
                () => Visibility(
                  visible: locationController.dropdownDataVisible.value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 16,
                        width: 16,
                        child: Image.asset(
                            "assets/DashboardScreen_imgs/dashboard_map.png"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "5/1, Boating Basin, Clifton, Block-5, Karachi,\nPakistan",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: ColorSelect().KNIGHTSARMORCOLOR),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => Visibility(
                    visible: locationController.dropdownDataVisible.value,
                    child: const SizedBox(height: 20)),
              ),
              InkWell(
                onTap: () {
                  // Get.offNamed(DashBoardScreen.routeName);
                  // Get.offNamed(DashBoardScreen.routeName);
                  locationController.ChangeLocation();
                  locationController.toggleText();
                  locationController.dropdownDataVisibility();
                  // locationController.changetext();
                  if (locationController.condition.value) {
                    locationController.changetext();
                  } else {
                    Get.toNamed(LoginScreen.routeName);
                  }
                },
                child: Container(
                  // height: 48,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorSelect().BRIGHTRED,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Obx(
                      () => Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Text(
                          // "Turn On",
                          locationController.buttontext.value
                              ? "Turn On"
                              : "Try Again",

                          // ? "Try Again"
                          // : "Turn On",
                          style: GoogleFonts.dmSans(
                              fontSize: 18,
                              color: ColorSelect().WHITECOLOR,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
