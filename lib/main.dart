import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vericheck_app/Screen/Forgot%20Password/forgot_password.dart';
import 'package:vericheck_app/Screen/Login%20Screen/login_screen.dart';
import 'package:vericheck_app/Screen/My%20Target%20Screen/my_target_screen.dart';
import 'package:vericheck_app/Screen/Splash%20Screen/splash_screen.dart';
import 'package:vericheck_app/Utils/Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          textSelectionTheme:
              TextSelectionThemeData(selectionHandleColor: Colors.black)),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      getPages: routes,
      // home: RecordingWath(),
    );
  }
}
