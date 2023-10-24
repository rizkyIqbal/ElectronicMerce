import 'package:flutter_application_1/routes/pages_name.dart';
import 'package:flutter_application_1/screens/auth/login/login_binding.dart';
import 'package:flutter_application_1/screens/auth/login/login_screen.dart';
import 'package:flutter_application_1/screens/details/details_screen.dart';
import 'package:flutter_application_1/screens/home/home_binding.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
import 'package:flutter_application_1/screens/home/profile/profile_binding.dart';
import 'package:flutter_application_1/screens/home/profile/profile_screen.dart';
import 'package:flutter_application_1/screens/main_page.dart';
import 'package:flutter_application_1/screens/welcome/wecome_screen.dart';
import 'package:flutter_application_1/screens/welcome/welcome_binding.dart';
import 'package:get/get.dart';

class PagesRoute {
  static final getPages = [
    GetPage(
      name: PagesName.main,
      page: () => const MainPage(),
    ), 
    GetPage(
      name: PagesName.welcome,
      page: () => const WelcomeScreen(),
      binding: WelcomeBinding(),
    ), 
    GetPage(
      name: PagesName.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ), 
    GetPage(
      name: PagesName.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: PagesName.profile,
      page: () => const ProfileScreen(),
      binding: ProfileBinding(),
    ),
];
}