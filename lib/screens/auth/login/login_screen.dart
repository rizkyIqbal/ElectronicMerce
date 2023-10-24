import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth/login/login_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "Please Log Into Your Account",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Email",
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
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 8.0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Password",
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
                      Container(
                        alignment: Alignment.centerRight,
                        child: const Padding(
                          padding: EdgeInsets.only(top: 14.0, bottom: 10.0),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFF4242),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 46.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF4242),
                            minimumSize: const Size.fromHeight(40),
                          ),
                          onPressed: () {
                            Get.toNamed("/");
                          },
                          child: const Text('Login'),
                        ),
                      ),
                    ]),
              ),
            )
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
