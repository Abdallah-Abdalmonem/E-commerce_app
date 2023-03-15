import 'package:e_commerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CutomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CutomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
        print(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset(
              onBoardingList[index].image!,
              fit: BoxFit.cover,
              height: Get.height / 2.2,
              width: double.infinity,
            ),
            const SizedBox(height: 30),
            Text(
              onBoardingList[index].title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              onBoardingList[index].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        );
      },
    );
  }
}
