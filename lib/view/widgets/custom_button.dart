import 'package:e_commerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.next();
      },
      child: Container(
        decoration: BoxDecoration(
          // color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        child: const Text(
          'Continue',
          style: TextStyle(color: AppColor.white, fontSize: 20),
        ),
      ),
    );
  }
}
