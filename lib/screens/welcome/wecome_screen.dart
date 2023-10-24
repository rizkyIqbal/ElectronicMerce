import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth/login/login_screen.dart';
import 'package:flutter_application_1/screens/welcome/welcome_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WelcomeController controller = Get.put(WelcomeController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "Let's Get Started",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0, bottom: 50),
              child: Image.asset(
                'assets/images/undraw_Shopping_Bags_sbj5.png',
                // width: 150,
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF4242),
                      minimumSize: const Size.fromHeight(40),
                    ),
                    onPressed: () {
                      Get.toNamed("/login");
                    },
                    child: const Text('Login'),
                  ),
                  const Row(
                    children: [
                      Text("New Customer?"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Create New Account",
                          style: TextStyle(
                            color: Color(0xFFFF4242),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none,
);
