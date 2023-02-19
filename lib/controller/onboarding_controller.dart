import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnboardingControllerImp extends OnboardingController {
  int currentPage = 0;
  PageController? pageController;
  @override
  next() {
    pageController!.nextPage(
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeIn,
    );
    // if (currentPage < 2) {
    //   currentPage++;
    //   update();
    // }
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
