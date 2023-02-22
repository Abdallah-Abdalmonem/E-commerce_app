import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:e_commerce/data/datasource/static/static.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnboardingController {
  int currentPage = 0;
  PageController? pageController;
  @override
  next() {
    // currentPage++;

    if (currentPage >= onBoardingList.length - 1) {
      Get.toNamed(AppRoutes.login);
    }

    pageController!.nextPage(
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeIn,
    );
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
