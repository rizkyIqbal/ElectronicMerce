import 'package:flutter_application_1/screens/home/home_controller.dart';
import 'package:get/get.dart';
// import 'package:flutter_application_1/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Bind the HomeController to the widget
    Get.put<HomeController>(HomeController());
  }
}
