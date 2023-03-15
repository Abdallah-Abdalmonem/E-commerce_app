import 'package:e_commerce/view/widgets/auth/custom_button_auth.dart';
import 'package:e_commerce/view/widgets/auth/custom_textformfield_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/reset_password.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../widgets/auth/custom_text_body_auth.dart';
import '../../../widgets/auth/custom_text_title_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(
            title: "New Password",
          ),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(textBody: "Please Enter new Password"),
          const SizedBox(height: 15),
          CustomTextFormFieldAuth(
            valid: (value) {
              validInput(value!, 5, 100, 'password');
            },
            textController: controller.password,
            hintText: "Enter Your Password",
            suffixIcon: Icon(Icons.lock_outline),
            labelText: "Password",
          ),
          const SizedBox(height: 40),
          CustomTextFormFieldAuth(
            valid: (value) {
              validInput(value!, 5, 100, 'password');
            },
            textController: controller.password,
            hintText: "Re Enter Your Password",
            suffixIcon: Icon(Icons.lock_outline),
            labelText: "Password",
          ),
          const SizedBox(height: 40),
          CustomButtonAuth(
              textButton: "save",
              pressed: () {
                controller.goToSuccessResetPassword();
              }),
        ]),
      ),
    );
  }
}
