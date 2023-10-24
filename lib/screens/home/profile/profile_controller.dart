import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_application_1/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  static ProfileController profileController = Get.find();
  // final RxString name = 'John Doe'.obs;

  // User myProfile = User(name: 'John Doe');
  final TextEditingController textController = TextEditingController();
  final User myProfile = User(); // Initialize an instance of the User model
  final String _nameKey = 'user_name';
  String? savedName;
  final String fileName = 'image.png';

  Rx<File?> _selectedImage = Rx<File?>(null);

  File? get selectedImage => _selectedImage.value;

  Future<XFile?> pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage != null) {
      _selectedImage.value = File(returnedImage.path);
    }
    return returnedImage;
  }

  Future<void> saveImage(File imageFile) async {
    final appDir = await getApplicationDocumentsDirectory();
    final localPath = appDir.path;
    final localFile = File('$localPath/$fileName');
    final imageBytes = await imageFile.readAsBytes();
    await localFile.writeAsBytes(imageBytes);
  }

  Future<void> loadImage() async {
    final appDir = await getApplicationDocumentsDirectory();
    final localPath = appDir.path;
    final localFile = File('$localPath/$fileName');

    if (await localFile.exists()) {
      _selectedImage.value = localFile;
    }
  }

  Future<void> deleteImage() async {
    final appDir = await getApplicationDocumentsDirectory();
    final localPath = appDir.path;
    final localFile = File('$localPath/$fileName');
    if (await localFile.exists()) {
      await localFile.delete();
      _selectedImage.value = null;
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadProfileName();
  }

  void updateProfileName(String newName) {
    myProfile.name.value = newName;
    saveProfileName(newName);
  }

  void saveProfileName(String newName) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nameKey, newName);
  }

  Future<void> loadProfileName() async {
    final prefs = await SharedPreferences.getInstance();
    savedName = prefs.getString('user_name');
    print(savedName);
    if (savedName != null) {
      myProfile.name.value = savedName!;
      textController.text = myProfile.name.value;
    }
  }
}
