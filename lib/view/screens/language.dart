import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:e_commerce/core/localizat/chnage_local.dart';
import 'package:e_commerce/view/widgets/language/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 10),
            CustomButtonLanguage(
              pressed: () {
                controller.changeLang('ar');
                Get.toNamed(AppRoutes.onboarding);
              },
              textButton: 'Ar',
            ),
            CustomButtonLanguage(
              pressed: () {
                controller.changeLang('en');
                Get.toNamed(AppRoutes.onboarding);
              },
              textButton: 'En',
            ),
          ],
        ),
      ),
    );
  }
}
