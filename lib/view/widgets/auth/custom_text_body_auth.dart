import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String textBody;
  const CustomTextBodyAuth({
    Key? key,
    required this.textBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textBody,
      style:
          Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
      textAlign: TextAlign.center,
    );
  }
}
