import 'package:get/get.dart';
import 'package:vericheck_app/Screen/Change%20Password%20Screen/change_password_screen.dart';
import 'package:vericheck_app/Screen/Create%20Password%20Screen/create_password_screen.dart';
import 'package:vericheck_app/Screen/DashBoard%20Screen.dart/dashboard_screen.dart';
import 'package:vericheck_app/Screen/Forgot%20Password/forgot_password.dart';
import 'package:vericheck_app/Screen/Kitchen%20Screen/kitchen_screen.dart';
import 'package:vericheck_app/Screen/Location%20Screen/location_screen.dart';
import 'package:vericheck_app/Screen/Login%20Screen/login_screen.dart';
import 'package:vericheck_app/Screen/My%20Target%20Screen/my_target_screen.dart';
import 'package:vericheck_app/Screen/Otp%20Screen/otp_screen.dart';
import 'package:vericheck_app/Screen/Pizza%20Hut%20Screen/pizza_hut_screen.dart';
import 'package:vericheck_app/Screen/Profile%20Screen/profile_screen.dart';
import 'package:vericheck_app/Screen/Question_Details_Screen.dart/question_details_screen.dart';
import 'package:vericheck_app/Screen/Report%20Screen/report_screen.dart';
import 'package:vericheck_app/Screen/Search%20Screen/search_screen.dart';
import 'package:vericheck_app/Screen/Splash%20Screen/splash_screen.dart';
import 'package:vericheck_app/Screen/Start%20Verification/start_verification.dart';
import 'package:vericheck_app/Screen/Verified%20Screen/Verified.dart';
import 'package:vericheck_app/Screen/successfull%20Screen/successfull_screen.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: SplashScreen.routeName,
    page: () => const SplashScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: LoginScreen.routeName,
    page: () => LoginScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: ForgotPassword.routeName,
    page: () => ForgotPassword(),
    transition: Transition.noTransition,
  ),

  GetPage(
    name: OtpScreen.routeName,
    page: () => OtpScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: VerifiedScreen.routeName,
    page: () => VerifiedScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: CreatePassword.routeName,
    page: () => CreatePassword(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: SuccessFullScreen.routeName,
    page: () => SuccessFullScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: DashBoardScreen.routeName,
    page: () => const DashBoardScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: MyTargetScreen.routeName,
    page: () => MyTargetScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: ReportScreen.routeName,
    page: () => ReportScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: StartVerification.routeName,
    page: () => StartVerification(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: SearchScreen.routeName,
    page: () => SearchScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: ProfileScreen.routeName,
    page: () => ProfileScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: ChangePassword.routeName,
    page: () => ChangePassword(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: LocationScreen.routeName,
    page: () => LocationScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: PizzaHutScreen.routeName,
    page: () => PizzaHutScreen(),
    transition: Transition.noTransition,
  ), //
  GetPage(
    name: KitchenScreen.routeName,
    page: () => KitchenScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: QuestionDetailsScreen.routeName,
    page: () => QuestionDetailsScreen(),
    transition: Transition.noTransition,
  ),
];
