import 'package:e_commerce/controller/auth/signup_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpontrollerImp(), fenix: true);
  }
}
