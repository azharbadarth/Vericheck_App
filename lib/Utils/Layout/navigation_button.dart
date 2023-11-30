import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:new_app/Utils/Colors/color_resource.dart';

class NavigationButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon, text;
  final int tab, currentTab;
  final bool isDisabled;

  const NavigationButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
    required this.tab,
    required this.currentTab,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    Color color = currentTab == tab
        ? ColorSelect().BRIGHTRED
        : (isDisabled
                ? ColorSelect().WHITECOLOR.withOpacity(0.8)
                : ColorSelect().WHITECOLOR)
            .withOpacity(0.4);

    return MaterialButton(
      minWidth: 40,
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: color,
            height: 22,
          ),
          // Image.asset(
          //   icon,
          //   color: color,
          //   height: 25,
          // ),
          const SizedBox(height: 4),
          Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
