import 'package:get/get.dart';

class KitchenController extends GetxController {
  RxBool isClicked = false.obs;
  void changecolor() {
    // isClicked.value = !isClicked.value;
    isClicked.value = !isClicked.value;
  }

  // var buttonText = 'Q:1'.obs;

  // void changeText() {
  //   buttonText.value = 'Q:1';
  // }
}
