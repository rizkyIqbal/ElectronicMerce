import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/routes/pages_name.dart';
import 'package:flutter_application_1/routes/pages_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget  {
  const MyApp({Key? key}) : super(key: key);

   @override
    State<MyApp> createState() => _MyAppState();

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Movie App',
  //     theme: ThemeData(
  //         primarySwatch: Colors.blue,
  //         scaffoldBackgroundColor: Colors.white,
  //         fontFamily: "Gordita",
  //         textTheme:
  //             const TextTheme(bodyText2: TextStyle(color: Colors.black54))),
  //     home: const NavigationBar(),
  //   );
  // }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PagesName.welcome,
      getPages: PagesRoute.getPages,
      builder: (BuildContext context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child ?? Container(),
        );
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Gordita",
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.black54))),
    );
  }
}

