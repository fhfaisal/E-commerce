import 'package:ecommerce/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';

class AppSocialButtons extends StatelessWidget {
  const AppSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(AppSizes.sm),
          decoration: BoxDecoration(border: Border.all(color: AppColors.grey), borderRadius: BorderRadius.circular(100)),
          child: GestureDetector(
            onTap: () => controller.googleSignIn(),
            child: const Image(
              height: AppSizes.iconLg,
              width: AppSizes.iconLg,
              image: AssetImage(AppImageStrings.google),
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Container(
          padding: const EdgeInsets.all(AppSizes.sm),
          decoration: BoxDecoration(border: Border.all(color: AppColors.grey), borderRadius: BorderRadius.circular(100)),
          child: GestureDetector(
            onTap: () {},
            child: const Image(
                height: AppSizes.iconLg,
                width: AppSizes.iconLg,
                image: AssetImage(AppImageStrings.facebook)),
          ),
        ),
      ],
    );
  }
}
