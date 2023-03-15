import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController emailTextController;

  @override
  checkEmail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoutes.verfiyCode);
    update();
  }

  @override
  void onInit() {
    emailTextController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    emailTextController.dispose();

    super.dispose();
  }
}
