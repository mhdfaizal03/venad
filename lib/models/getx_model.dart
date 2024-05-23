import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageController extends GetxController {
  var image1 = Rx<File?>(null);
  var image2 = Rx<File?>(null);
  var image3 = Rx<File?>(null);

  final ImagePicker picker = ImagePicker();

  Future<void> pickImage(int imageNumber, ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      File image = File(pickedFile.path);
      switch (imageNumber) {
        case 1:
          image1.value = image;
          break;
        case 2:
          image2.value = image;
          break;
        case 3:
          image3.value = image;
          break;
      }
    }
  }
}
