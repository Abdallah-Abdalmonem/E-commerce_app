import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonLanguage extends StatelessWidget {
  final String textButton;
  final void Function() pressed;
  const CustomButtonLanguage(
      {super.key, required this.pressed, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      // height: 58,
      // minWidth: 340,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: AppColor.primaryColor,
      onPressed: pressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Text(
          textButton,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
