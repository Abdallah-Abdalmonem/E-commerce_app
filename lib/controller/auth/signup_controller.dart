import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpontrollerImp extends SignUpController {
  late TextEditingController userNameTextController;
  late TextEditingController emailTextController;
  late TextEditingController phoneNumberTextController;
  late TextEditingController passwordTextController;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  signUp() {
    if (formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.verfiyCodeSignUp);
      print('Valid');
    } else {
      print('Not Valid');
    }
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
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
