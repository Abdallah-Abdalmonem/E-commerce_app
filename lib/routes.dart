import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:e_commerce/view/screens/auth/login.dart';
import 'package:e_commerce/view/screens/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onboarding: (context) => const OnBoarding(),
};
