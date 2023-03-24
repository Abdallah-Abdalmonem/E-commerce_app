import 'package:e_commerce/core/localizat/chnage_local.dart';
import 'package:e_commerce/core/localizat/translation.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:e_commerce/routes.dart';
import 'package:e_commerce/view/screens/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ecommerce',
      theme: controller.appTheme,
      // initialRoute: AppRoutes.onboarding,
      home: Language(),
      routes: routes,
      initialBinding: MyBinding(),
    );
  }
}
