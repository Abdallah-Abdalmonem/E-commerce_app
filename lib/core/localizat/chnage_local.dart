import 'package:e_commerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? shardPrefrencesLang =
        myServices.sharedPreferences.getString('lang');
    if (shardPrefrencesLang == 'ar') {
      language = Locale('ar');
    } else if (shardPrefrencesLang == 'en') {
      language = Locale('en');
    } else
      language = Locale(Get.deviceLocale!.languageCode);

    super.onInit();
  }
}
