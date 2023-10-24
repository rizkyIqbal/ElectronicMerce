import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt selectedIndex = 0.obs;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 2: Business',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}