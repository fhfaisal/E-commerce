import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_function.dart';
import '../controllers/on_boarding_controller.dart';
class OnBoardingDots extends GetView<OnBoardingController> {
  const OnBoardingDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Positioned(
        bottom: AppDeviceUtility.getBottomNavigationBarHeight() + 25,
        left: AppSizes.defaultSpace,
        child: Center(
            child: SmoothPageIndicator(
              controller: controller.pageController,
              count: 4,
              effect: ExpandingDotsEffect(activeDotColor: dark ? AppColors.light : AppColors.dark, dotHeight: 10),
            )));
  }
}