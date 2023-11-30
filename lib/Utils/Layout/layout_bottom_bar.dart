import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vericheck_app/Screen/DashBoard%20Screen.dart/dashboard_screen.dart';
import 'package:vericheck_app/Screen/My%20Target%20Screen/my_target_screen.dart';
import 'package:vericheck_app/Screen/Profile%20Screen/profile_screen.dart';
import 'package:vericheck_app/Screen/Report%20Screen/report_screen.dart';
import 'package:vericheck_app/Screen/Search%20Screen/search_screen.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
import 'package:vericheck_app/Utils/Layout/navigation_button.dart';

class LayoutBottomBar extends StatefulWidget {
  final int currentTab;
  const LayoutBottomBar({super.key, required this.currentTab});

  @override
  State<LayoutBottomBar> createState() => _LayoutBottomBarState();
}

class _LayoutBottomBarState extends State<LayoutBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xff181A20),
      elevation: 18.0,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigationButton(
                  // onPressed: () => Get.offNamed(DashBoardScreen.routeName),
                  onPressed: () {
                    Get.off(
                      DashBoardScreen(),
                      transition: Transition.noTransition,
                    );
                  },
                  icon: "assets/BottomNavigation/Home_icon.svg",
                  text: 'Home',
                  tab: 1,
                  currentTab: widget.currentTab,
                ),
                NavigationButton(
                  // onPressed: () => Get.offNamed(MyTargetScreen.routeName),
                  onPressed: () {
                    Get.off(
                      MyTargetScreen(),
                      transition: Transition.noTransition,
                    );
                  },
                  // onPressed: () => Get.offNamed(OrderListBody.routeName),
                  icon: "assets/BottomNavigation/my_target_icon.svg",
                  text: 'My Target',
                  tab: 2,
                  isDisabled: true,
                  currentTab: widget.currentTab,
                ),
              ],
            ),
            NavigationButton(
              // onPressed: () => Get.offNamed(SearchScreen.routeName),
              onPressed: () {
                Get.off(
                  SearchScreen(),
                  transition: Transition.noTransition,
                );
              },
              icon: "assets/BottomNavigation/search_icon.svg",
              text: 'Search',
              tab: 3,
              isDisabled: true,
              currentTab: widget.currentTab,
            ),
            NavigationButton(
              // onPressed: () => Get.offNamed(ProfileScreen.routeName),
              onPressed: () {
                Get.off(
                  ProfileScreen(),
                  transition: Transition.noTransition,
                );
              },
              icon: "assets/BottomNavigation/profile_icon.svg",
              text: 'Profile',
              tab: 4,
              isDisabled: true,
              currentTab: widget.currentTab,
            )
          ],
        ),
      ),
    );
  }
}
