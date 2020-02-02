import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class Data extends ChangeNotifier {
  File image;
  void changeImage() async {
    image = await ImagePicker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }
}
