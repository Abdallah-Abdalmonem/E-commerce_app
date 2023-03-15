import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
