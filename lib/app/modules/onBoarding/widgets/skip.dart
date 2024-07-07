import 'package:ecommerce/app/utils/constants/app_text.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/device/device_utility.dart';
import '../controllers/on_boarding_controller.dart';

class OnBoardingSkipButton extends GetView<OnBoardingController> {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtility.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onLongPress: () => controller.navigateToLogin(),
        onPressed: () => controller.skipPage(),
        child: const Text(AppText.skip),
      ),
    );
  }
}
