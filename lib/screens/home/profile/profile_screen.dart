import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyProfileScreen();
  }
}

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final ProfileController _profileController = Get.put(ProfileController());
  File? _selectedImage;
  String userInput = "";

  @override
  void initState() {
    super.initState();
    _loadImage();
    _profileController.loadProfileName();
    // _profileController.textController.text = _profileController.myProfile.name.value;
  }

  // @override
  // void onClose() {
  //   // Dispose of the controller when it's no longer needed
  //   _profileController.textController.dispose();
  //   super.onClose();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Edit Profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _selectedImage != null
                ? Stack(
                    children: [
                      CircleAvatar(
                          radius: 64,
                          backgroundImage: FileImage(_selectedImage!)),
                      Positioned(
                        bottom: -10,
                        left: 80,
                        child: IconButton(
                          onPressed: () async {
                            // print("pepek");
                            final image = await _profileController.pickImageFromGallery();
                            setState(() {
                              _selectedImage = _profileController.selectedImage;
                            });
                          },
                          icon: const Icon(Icons.add_a_photo),
                        ),
                      )
                    ],
                  )
                : Stack(
                    children: [
                      const CircleAvatar(
                          radius: 64,
                          backgroundImage: NetworkImage(
                              "https://static.vecteezy.com/system/resources/thumbnails/002/318/271/small/user-profile-icon-free-vector.jpg")),
                      Positioned(
                        bottom: -10,
                        left: 80,
                        child: IconButton(
                          onPressed: () async {
                            final image = await _profileController.pickImageFromGallery();
                            setState(() {
                              _selectedImage = _profileController.selectedImage;
                            });
                          },
                          icon: const Icon(Icons.add_a_photo),
                        ),
                      )
                    ],
                  ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 8.0),
                    child: Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _profileController.textController,
                    decoration: const InputDecoration(
                    hintText: "Name",
                    filled: true,
                    fillColor: Colors.white,
                    border: outlineInputBorder,
                    enabledBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Colors.grey, width: 0.5),
                        borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                    focusedBorder: outlineInputBorder,
                    contentPadding: EdgeInsets.only(top: 5, left: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4242),
                        minimumSize: const Size.fromHeight(40),
                      ),
                      onPressed: () async {
                        // _selectedImage = null;
                        if (_selectedImage != null) {
                          await _profileController.saveImage(_selectedImage!);
                        }
                        _profileController.updateProfileName(_profileController.textController.text);
                        // _profileController.updateProfileName(_profileController.textController.text);
                        // print(_selectedImage);
                      },
                      child: const Text(
                        'Save Changes',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4242),
                        minimumSize: const Size.fromHeight(40),
                      ),
                      onPressed: () async {
                        if (_selectedImage != null) {
                          await _profileController.deleteImage();
                        }
                      },
                      child: const Text(
                        'Delete Image',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _loadImage() async {
    await _profileController.loadImage();
    setState(() {
      _selectedImage = _profileController.selectedImage;
    });
  }

}


const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none,
);
