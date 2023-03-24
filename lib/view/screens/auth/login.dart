import 'package:e_commerce/controller/auth/login_controller.dart';
import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/core/functions/alert_exit_app.dart';
import 'package:e_commerce/core/functions/valid_input.dart';
import 'package:e_commerce/view/widgets/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/auth/custom_button_signin_signup.dart';
import '../../widgets/auth/custom_text_title_auth.dart';
import '../../widgets/auth/custom_text_body_auth.dart';
import '../../widgets/auth/custom_textformfield_auth.dart';
import '../../widgets/auth/logo_auth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColor.grey,
          ),
          elevation: 0,
          backgroundColor: AppColor.white,
          centerTitle: true,
          title: Text(
            '9'.tr,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    const LogoAuth(),
                    CustomTextTitleAuth(title: '10'.tr),
                    CustomTextBodyAuth(textBody: '11'.tr),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFormFieldAuth(
                        valid: (value) {
                          return validInput(value!, 5, 100, 'email');
                        },
                        paddingForLabelText: 10,
                        textController: controller.emailTextController,
                        labelText: '18'.tr,
                        hintText: '12'.tr,
                        suffixIcon: const Icon(Icons.email_outlined)),
                    const SizedBox(
                      height: 30,
                    ),
                    GetBuilder<LoginControllerImp>(builder: (context) {
                      return CustomTextFormFieldAuth(
                          valid: (value) {
                            return validInput(value!, 5, 30, 'password');
                          },
                          onTapSuffixIcon: controller.showPassword,
                          obscure: controller.isShowPassword,
                          paddingForLabelText: 10,
                          textController: controller.passwordTextController,
                          labelText: '19'.tr,
                          hintText: '13'.tr,
                          suffixIcon: const Icon(Icons.lock_outline));
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: true,
                            activeColor: AppColor.primaryColor,
                            onChanged: (val) {}),
                        const Text('Remember me'),
                        const Spacer(),
                        TextButton(
                          child: Text(
                            '14'.tr,
                            style: TextStyle(
                                textBaseline: TextBaseline.alphabetic,
                                color: AppColor.primaryColor),
                          ),
                          onPressed: () {
                            controller.goToForgetPassword();
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonAuth(
                        textButton: '15'.tr,
                        pressed: () {
                          controller.login();
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonSignInOrSignUp(
                        onPress: () {
                          controller.goToSignUp();
                        },
                        textOne: '16'.tr,
                        textTwo: '17'.tr),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
