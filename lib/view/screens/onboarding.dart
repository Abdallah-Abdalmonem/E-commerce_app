import 'package:e_commerce/controller/onboarding_controller.dart';
import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/view/widgets/onboarding/custom_button.dart';
import 'package:e_commerce/view/widgets/onboarding/custom_slider.dart';
import 'package:e_commerce/view/widgets/onboarding/dot_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body:
          // SafeArea(
          // child:
          Column(
        children: [
          const Expanded(
            flex: 3,
            child: CutomSliderOnBoarding(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: const [
                CustomDotControllerOnBoarding(),
                Spacer(
                  flex: 2,
                ),
                CustomButtonOnBoarding(),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          )
        ],
      ),
      // ),
    );
  }
}
