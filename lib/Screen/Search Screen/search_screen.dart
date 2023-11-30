import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Screen/Location%20Screen/location_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Layout/layout_screen.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = '/searchscreen';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      currentTab: 3,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: ColorSelect().WHITECOLOR,
        elevation: 0.0,
        leadingWidth: 28,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Search",
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
              const SizedBox(height: 20),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  //set border radius more than 50% of height and width to make circle
                ),
                child: Container(
                  // decoration:
                  //     BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorSelect().WHITECOLOR,
                  ),
                  height: 50,
                  width: Get.width,
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 4.0, left: 10),
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: ColorSelect().BRIGHTRED,
                            size: 36,
                            weight: 10,
                          ),
                          onPressed: () {
                            // _passwordController.togglePasswordVisibility();
                          },
                        ),
                      ),
                      hintText: "Pizza Hut",
                      // contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      contentPadding: const EdgeInsets.only(top: 30, left: 16),
                      hintStyle: GoogleFonts.dmSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorSelect().BlackColor),
                      filled: true,
                      fillColor: ColorSelect().WHITECOLOR,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                // onTap: () => Get.toNamed(LocationScreen.routeName),
                onTap: () {
                  Get.to(
                    LocationScreen(),
                    transition: Transition.noTransition,
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  elevation: 10,
                  color: ColorSelect().WHITECOLOR,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorSelect().WHITECOLOR,
                    ),
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 14,
                          ),
                          Text(
                            "Pizza Hut",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                "5/1, Boating Basin, Clifton, Block-5,\nKarachi,Pakistan",
                                style: GoogleFonts.dmSans(
                                    color: ColorSelect().KNIGHTSARMORCOLOR,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
