import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTextFormFieldAuth extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Icon? suffixIcon;
  final double? paddingForLabelText;
  final TextEditingController textController;
  final String? Function(String?) valid;
  final TextInputType? keyboardType;
  final bool? obscure;
  final Function()? onTapSuffixIcon;

  const CustomTextFormFieldAuth({
    Key? key,
    this.keyboardType,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.paddingForLabelText,
    required this.textController,
    required this.valid,
    this.obscure,
    this.onTapSuffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure ?? false,
      keyboardType: keyboardType,
      validator: valid,
      controller: textController,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.grey.withOpacity(.02),
        label: Padding(
          padding: EdgeInsets.all(paddingForLabelText ?? 0),
          child: Text(labelText ?? ''),
        ),
        // constraints: const BoxConstraints(maxHeight: 54),
        hintText: hintText,
        suffixIcon: InkWell(onTap: onTapSuffixIcon, child: suffixIcon),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        suffixIconColor: AppColor.grey,
        contentPadding: const EdgeInsets.all(20),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}

// class CustomTextFormFieldAuth extends StatelessWidget {
//   final String? labelText;
//   final String? hintText;
//   final Icon? suffixIcon;
//   final double? paddingForLabelText;
//   final TextEditingController textController;
//   final String? Function(String?) valid;
//   const CustomTextFormFieldAuth({
//     Key? key,
//     this.labelText,
//     this.hintText,
//     this.suffixIcon,
//     this.paddingForLabelText,
//     required this.textController,
//     required this.valid,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       borderRadius: BorderRadius.circular(50),
//       elevation: 5,
//       color: Color.fromARGB(240, 255, 255, 255),
//       // shadowColor: Colors.grey[100],
//       child: TextFormField(
//         validator: valid,
//         controller: textController,
//         decoration: InputDecoration(
//             label: Padding(
//               padding: EdgeInsets.all(paddingForLabelText ?? 0),
//               child: Text(labelText ?? ''),
//             ),
//             // constraints: const BoxConstraints(maxHeight: 90),
//             hintText: hintText,
//             suffixIcon: suffixIcon,
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             floatingLabelAlignment: FloatingLabelAlignment.start,
//             suffixIconColor: AppColor.grey,
//             contentPadding: const EdgeInsets.all(20),
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
//       ),
//     );
//   }
// }
