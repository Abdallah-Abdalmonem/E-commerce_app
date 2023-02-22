import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTextFieldAuth extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Icon suffixIcon;
  final TextEditingController TextController;
  const CustomTextFieldAuth({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.suffixIcon,
    required this.TextController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextController,
      decoration: InputDecoration(
          label: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(labelText),
          ),
          constraints: const BoxConstraints(maxHeight: 54),
          hintText: hintText,
          suffixIcon: suffixIcon,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          suffixIconColor: AppColor.grey,
          contentPadding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
    );
  }
}
