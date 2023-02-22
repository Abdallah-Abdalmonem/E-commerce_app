import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpontroller extends GetxController {
  singUp();
  goToLogin();
}

class SignUpontrollerImp extends SignUpontroller {
  late TextEditingController userNameTextController;
  late TextEditingController emailTextController;
  late TextEditingController phoneNumberTextController;
  late TextEditingController passwordTextController;

  @override
  singUp() {}

  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
    update();
  }

  @override
  void onInit() {
    userNameTextController = TextEditingController();
    emailTextController = TextEditingController();
    phoneNumberTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userNameTextController.dispose();
    emailTextController.dispose();
    phoneNumberTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }
}
