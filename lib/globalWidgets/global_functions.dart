
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class GlobalFunctions{
  Future<File> takeImage() async {
    var pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
      maxHeight: 480,
      maxWidth: 640,
      imageQuality: 50,
    );
    File? _file;
    if (pickedFile != null) {
      File _file = File(pickedFile.path); 
      return _file;
    } else {
      return _file!;
    }
  }
}