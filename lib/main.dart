import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:e_commerce/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.black,
          ),
          bodyLarge: TextStyle(
            height: 2,
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.onboarding,
      routes: routes,
    );
  }
}
