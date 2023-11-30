import 'package:get/get.dart';

class LocationController extends GetxController {
  // var buttontext = 'Try Again'.obs;

  var dropdownDataVisible = false.obs;

  void dropdownDataVisibility() {
    dropdownDataVisible.value = !dropdownDataVisible.value;
  }

  // void changetext() {
  //   // buttontext.value = 'ON Route';
  //   // buttontext.value = buttontext.value == "Turn On" ? "Try Again" : "Turn On";
  //   buttontext.value = buttontext.value == "Turn On" ? "Try Again" : "Turn On";
  // }

  RxBool Changehead = true.obs;
  void toggleText() {
    Changehead.value = !Changehead.value;
  }

  RxBool Changeloct = true.obs;
  void ChangeLocation() {
    Changeloct.value = !Changeloct.value;
  }

  RxBool buttontext = true.obs;
  void changetext() {
    buttontext.value = !buttontext.value;
  }

  RxBool condition = false.obs;

  void ChangeCondition() {
    condition.value = !condition.value;
  }
}
