import 'package:e_commerce/controller/auth/florget_password_controller.dart';
import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/view/widgets/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/functions/valid_input.dart';
import '../../../widgets/auth/custom_text_title_auth.dart';
import '../../../widgets/auth/custom_text_body_auth.dart';
import '../../../widgets/auth/custom_textformfield_auth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
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
            'Forget Password',
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
                const CustomTextTitleAuth(title: 'Receive Code'),
                const CustomTextBodyAuth(
                    textBody: 'Enter your email below to receive code'),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormFieldAuth(
                  valid: (value) {
                    validInput(value!, 5, 100, 'email');
                  },
                  textController: controller.emailTextController,
                  hintText: 'Enter your email',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonAuth(
                    textButton: 'Send Code',
                    pressed: () {
                      controller.goToVerfiyCode();
                    }),
              ],
            ),
          ),
        ));
  }
}
