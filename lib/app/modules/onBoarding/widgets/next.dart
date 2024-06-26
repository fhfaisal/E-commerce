import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_function.dart';
import '../controllers/on_boarding_controller.dart';

class OnBoardingNextButton extends GetView<OnBoardingController> {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark =AppHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: AppDeviceUtility.getBottomNavigationBarHeight(),
      right: AppSizes.defaultSpace,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? AppColors.primary : AppColors.black,
          ),
          onPressed: () => controller.nextPage(),
          child: const Icon(Iconsax.arrow_right_3)),
    );
  }
}