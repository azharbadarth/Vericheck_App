import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatePasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  var isPasswordVisible = false.obs;
  var isPasswordVisibleTwo = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void togglePasswordVisibilityTwo() {
    isPasswordVisibleTwo.value = !isPasswordVisibleTwo.value;
  }
}
