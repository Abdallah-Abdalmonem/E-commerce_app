import 'package:e_commerce/core/constant/image_assets.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAsset.appIcon,
      width: 150,
      height: 150,
    );
  }
}
