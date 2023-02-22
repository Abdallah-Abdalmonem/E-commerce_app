import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonSignInOrSignUp extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final void Function() onPress;
  const CustomButtonSignInOrSignUp(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne),
        TextButton(
          onPressed: onPress,
          child: Text(
            textTwo,
            style: const TextStyle(color: AppColor.primaryColor),
          ),
        ),
      ],
    );
  }
}
