import 'package:e_commerce/view/widgets/auth/custom_button_auth.dart';
import 'package:e_commerce/view/widgets/auth/custom_textformfield_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/check_email_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/valid_input.dart';
import '../../widgets/auth/custom_text_body_auth.dart';
import '../../widgets/auth/custom_text_title_auth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('27'.tr,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitleAuth(title: "28".tr),
          const SizedBox(height: 10),
          CustomTextBodyAuth(textBody: "29".tr),
          const SizedBox(height: 15),
          CustomTextFormFieldAuth(
            valid: (value) {
              validInput(value!, 5, 100, 'email');
            },
            textController: controller.email,
            hintText: "12".tr,
            suffixIcon: Icon(Icons.email_outlined),
            labelText: "18".tr,
          ),
          CustomButtonAuth(
              textButton: "30".tr,
              pressed: () {
                controller.goToSuccessSignUp();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
