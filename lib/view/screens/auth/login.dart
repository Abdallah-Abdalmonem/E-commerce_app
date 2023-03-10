import 'package:e_commerce/controller/auth/login_controller.dart';
import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/view/widgets/auth/custom_button_auth.dart';
import 'package:e_commerce/view/widgets/onboarding/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_routes.dart';
import '../../widgets/auth/custom_button_signin_signup.dart';
import '../../widgets/auth/custom_text_Title_auth.dart';
import '../../widgets/auth/custom_text_body_auth.dart';
import '../../widgets/auth/custom_textfield_auth.dart';
import '../../widgets/auth/logo_auth.dart';

class Login extends StatelessWidget {
  Login({super.key});

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
            'Sign In',
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
                const LogoAuth(),
                const CustomTextTitleAuth(title: 'Welcome Back'),
                const CustomTextBodyAuth(
                    textBody:
                        'Sing in with your email and password \n or continue with social media'),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFieldAuth(
                    TextController: controller.emailTextController,
                    labelText: 'Email',
                    hintText: 'Enter your Email',
                    suffixIcon: const Icon(Icons.email_outlined)),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFieldAuth(
                    TextController: controller.passwordTextController,
                    labelText: 'Password',
                    hintText: 'Enter your Password',
                    suffixIcon: const Icon(Icons.lock_outline)),
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
                        onPressed: () {},
                        child: const Text(
                          'Forget Password',
                          style: TextStyle(
                              textBaseline: TextBaseline.alphabetic,
                              color: AppColor.primaryColor),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonAuth(textButton: 'Sign in', pressed: () {}),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonSignInOrSignUp(
                    onPress: () {
                      controller.goToSignUp();
                    },
                    textOne: 'Don\'t have an account ?',
                    textTwo: 'Sign Up'),
              ],
            ),
          ),
        ));
  }
}
