import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/view/widgets/language/custom_button.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Change Language',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 10),
            CustomButtonLanguage(
              pressed: () {},
              textButton: 'Ar',
            ),
            CustomButtonLanguage(
              pressed: () {},
              textButton: 'En',
            ),
          ],
        ),
      ),
    );
  }
}
