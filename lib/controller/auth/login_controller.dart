import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
}

class LoginControllerImp extends LoginController {
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;

  @override
  login() {}

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.singup);
    update();
  }

  @override
  void onInit() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }
}
