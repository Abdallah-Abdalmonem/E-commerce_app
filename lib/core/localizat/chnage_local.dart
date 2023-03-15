import 'package:e_commerce/core/constant/app_theme.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString('lang', langCode);
    appTheme = langCode == 'ar' ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? shardPrefrencesLang =
        myServices.sharedPreferences.getString('lang');
    if (shardPrefrencesLang == 'ar') {
      language = Locale('ar');
      appTheme = themeArabic;
    } else if (shardPrefrencesLang == 'en') {
      language = Locale('en');
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }

    super.onInit();
  }
}
