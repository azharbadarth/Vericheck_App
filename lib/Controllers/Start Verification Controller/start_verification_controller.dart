import 'package:flutter/material.dart';
import 'package:get/get.dart';

// city
class StartVerificationController extends GetxController {
  var selectcompanyOption =
      "Select Company".obs; // Initialize with a default value
  var selectcompanyDropdown =
      ["Select Company", "Pizza Hut", "Al Naaz", "Domino's", "Kolaachi"].obs;

  var selectbranchOption =
      "Select Branch".obs; // Initialize with a default value
  var selectbranchDropdown = [
    "Select Branch",
    "Gulshan-e-iqbal",
    "Gulshan-e-Hadeed",
    "Johar Chorangi",
    "Saddar"
  ].obs;

  void changecompanyOption(String option) {
    selectcompanyOption.value = option;
  }

  void changebranchOption(String option) {
    selectbranchOption.value = option;
  }
}
