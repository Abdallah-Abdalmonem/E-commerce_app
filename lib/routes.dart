import 'package:e_commerce/core/constant/app_routes.dart';
import 'package:e_commerce/view/screens/auth/check_email.dart';
import 'package:e_commerce/view/screens/auth/forget_password/forget_password.dart';
import 'package:e_commerce/view/screens/auth/login.dart';
import 'package:e_commerce/view/screens/auth/forget_password/reset_password.dart';
import 'package:e_commerce/view/screens/auth/signup.dart';
import 'package:e_commerce/view/screens/auth/forget_password/success_reset_password.dart';
import 'package:e_commerce/view/screens/auth/success_signup.dart';
import 'package:e_commerce/view/screens/auth/forget_password/verfiy_code.dart';
import 'package:e_commerce/view/screens/auth/verifycodesignup.dart';
import 'package:e_commerce/view/screens/language.dart';
import 'package:e_commerce/view/screens/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //auth
  AppRoutes.login: (context) => const Login(),
  AppRoutes.singup: (context) => const SignUp(),
  AppRoutes.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoutes.successSignUp: (context) => const SuccessSignUp(),
  AppRoutes.forgetPassword: (context) => const ForgetPassword(),
  AppRoutes.verfiyCode: (context) => const VerfiyCode(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  AppRoutes.checkemail: (context) => const CheckEmail(),

  //
  AppRoutes.onboarding: (context) => const OnBoarding(),
  AppRoutes.language: (context) => const Language(),
  AppRoutes.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
};
