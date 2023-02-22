import 'package:e_commerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomButtonAuth extends GetView<OnBoardingControllerImp> {
  final String textButton;
  final void Function() pressed;

  const CustomButtonAuth(
      {super.key, required this.textButton, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0))),
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => AppColor.primaryColor)),
      onPressed: pressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          textButton,
          textAlign: TextAlign.center,
          style: const TextStyle(color: AppColor.white, fontSize: 20),
        ),
      ),
    );
  }
}
