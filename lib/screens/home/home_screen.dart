import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/home_controller.dart';
import 'package:flutter_application_1/screens/home/profile/profile_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/constants.dart';
import '../components/all_products.dart';
import '../components/categories.dart';
import '../components/popular_movies.dart';
import '../components/sectiontitle.dart';
import '../components/search_form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController controller = Get.put(HomeController());
  final ProfileController _profileController = Get.put(ProfileController());
  File? _selectedImage;


  @override
  void initState() {
    super.initState();
    _loadImage();
    _profileController.loadProfileName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 46.0, bottom: 46.0),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed("/profile");
                },
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: 
                      _selectedImage != null
                      ? CircleAvatar(
                        backgroundImage: 
                        // NetworkImage(
                        //     "https://static.vecteezy.com/system/resources/thumbnails/002/318/271/small/user-profile-icon-free-vector.jpg"),
                        FileImage(_selectedImage!),
                      ):
                      const CircleAvatar(
                        backgroundImage: 
                        NetworkImage(
                            "https://static.vecteezy.com/system/resources/thumbnails/002/318/271/small/user-profile-icon-free-vector.jpg"),
                        // FileImage(_selectedImage!),
                      ),
                    ),
                    Obx(
                      () => Text("Hello, ${_profileController.myProfile.name.value}!"),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Discover high",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text(
              "quality electronics.",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            // const SizedBox(height: defaultPadding),
            const SizedBox(height: defaultPadding),
            const AllProduct(),
            // const SizedBox(height: defaultPadding),
            const AllProduct(),

            // const PopularMovies(),
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
