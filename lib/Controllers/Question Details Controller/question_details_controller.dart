import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

// import 'package:image_picker/image_picker.dart';
class ImagePickerController extends GetxController {
  RxString imagepath = ''.obs;
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final Image = await _picker.pickImage(source: ImageSource.camera);
    if (Image != null) {
      imagepath.value = Image.path.toString();
    }
  }

  RxString videopath = ''.obs;
  Future getVideo() async {
    final ImagePicker _picker = ImagePicker();
    final Video = await _picker.pickVideo(source: ImageSource.camera);
    if (Video != null) {
      videopath.value = Video.path.toString();
    }
  }
}
