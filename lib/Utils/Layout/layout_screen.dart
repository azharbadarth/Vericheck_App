import 'package:flutter/material.dart';
import 'package:vericheck_app/Utils/Layout/layout_bottom_bar.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:new_app/Properties/colors.dart';
// import 'package:new_app/Screen/Dashboard/dashboard_screen.dart';
// import 'package:new_app/Screen/SideBar%20Screen/sidebarscreen.dart';
// import '../../Widgets/Layout/layout_bottom_bar.dart';
// import '../../Widgets/Layout/layout_fab.dart';

class Layout extends StatelessWidget {
  final Widget body;
  final Widget appBar;
  final int currentTab;
  const Layout({
    super.key,
    required this.body,
    required this.appBar,
    this.currentTab = 0,
  });

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: appBar,
      ),
      body: body,
      // floatingActionButton: keyboardIsOpened ? null : LayoutFAB(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: LayoutBottomBar(
        currentTab: currentTab,
      ),
    );
  }
}
