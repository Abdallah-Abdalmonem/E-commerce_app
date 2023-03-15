import 'package:e_commerce/controller/auth/signup_controller.dart';
import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/view/widgets/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/auth/custom_button_signin_signup.dart';
import '../../widgets/auth/custom_text_Title_auth.dart';
import '../../widgets/auth/custom_text_body_auth.dart';
import '../../widgets/auth/custom_textfield_auth.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpontrollerImp controller = Get.put(SignUpontrollerImp());
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
            'Sign Up',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomTextTitleAuth(title: 'Welcom SignUp Now'),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextBodyAuth(
                    textBody:
                        'Sing in with your email and password \n or continue with social media'),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFieldAuth(
                    TextController: controller.userNameTextController,
                    labelText: 'User name',
                    hintText: 'Enter your username',
                    suffixIcon: const Icon(Icons.person_2_outlined)),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFieldAuth(
                    TextController: controller.emailTextController,
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    suffixIcon: const Icon(Icons.email_outlined)),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFieldAuth(
                    TextController: controller.phoneNumberTextController,
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                    suffixIcon: const Icon(Icons.phone_android_outlined)),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFieldAuth(
                    TextController: controller.passwordTextController,
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    suffixIcon: const Icon(Icons.lock_outline)),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonAuth(textButton: 'Sign in', pressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                CustomButtonSignInOrSignUp(
                    onPress: () {
                      controller.goToLogin();
                    },
                    textOne: 'Are you have an account ?',
                    textTwo: 'Sign In'),
              ],
            ),
          ),
        ));
  }
}
