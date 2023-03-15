import 'package:e_commerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0))),
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => AppColor.primaryColor)),
      onPressed: () {
        controller.next();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        child: Text(
          '8'.tr,
          style: TextStyle(color: AppColor.white, fontSize: 20),
        ),
      ),
    );
  }
}
