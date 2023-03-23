import 'package:e_commerce/controller/auth/signup_controller.dart';
import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/core/functions/valid_input.dart';
import 'package:e_commerce/view/widgets/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/auth/custom_button_signin_signup.dart';
import '../../widgets/auth/custom_text_title_auth.dart';
import '../../widgets/auth/custom_text_body_auth.dart';
import '../../widgets/auth/custom_textformfield_auth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpontrollerImp());
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
            '17'.tr,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: GetBuilder<SignUpontrollerImp>(builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    CustomTextTitleAuth(title: '10'.tr),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextBodyAuth(textBody: '24'.tr),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFormFieldAuth(
                        valid: (value) {
                          return validInput(value!, 4, 30, 'username');
                        },
                        keyboardType: TextInputType.name,
                        paddingForLabelText: 10,
                        textController: controller.userNameTextController,
                        labelText: '20'.tr,
                        hintText: 'Enter your username',
                        suffixIcon: const Icon(Icons.person_2_outlined)),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFormFieldAuth(
                        valid: (value) {
                          return validInput(value!, 5, 100, 'email');
                        },
                        keyboardType: TextInputType.emailAddress,
                        paddingForLabelText: 10,
                        textController: controller.emailTextController,
                        labelText: '18'.tr,
                        hintText: '12'.tr,
                        suffixIcon: const Icon(Icons.email_outlined)),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFormFieldAuth(
                        valid: (value) {
                          return validInput(value!, 5, 40, 'phone');
                        },
                        keyboardType: TextInputType.phone,
                        paddingForLabelText: 10,
                        textController: controller.phoneNumberTextController,
                        labelText: '21'.tr,
                        hintText: '22'.tr,
                        suffixIcon: const Icon(Icons.phone_android_outlined)),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFormFieldAuth(
                        valid: (value) {
                          return validInput(value!, 5, 30, 'password');
                        },
                        paddingForLabelText: 10,
                        textController: controller.passwordTextController,
                        labelText: '19'.tr,
                        hintText: '22'.tr,
                        suffixIcon: const Icon(Icons.lock_outline)),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonAuth(
                        textButton: '17'.tr,
                        pressed: () {
                          controller.signUp();
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButtonSignInOrSignUp(
                        onPress: () {
                          controller.goToLogin();
                        },
                        textOne: '25'.tr,
                        textTwo: '26'.tr),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
