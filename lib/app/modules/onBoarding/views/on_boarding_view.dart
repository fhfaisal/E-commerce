import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../utils/constants/image_strings.dart';
import '../controllers/on_boarding_controller.dart';
import '../model/on_boarding.dart';
import '../widgets/dots.dart';
import '../widgets/next.dart';
import '../widgets/skip.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: (value) => controller.updatePageIndicator(value),
          children: [
            OnBoarding(image: AppImageStrings.onBoarding1, title: 'onBoarding1Title'.tr, subtitle: 'onBoarding1Subtitle'.tr),
            OnBoarding(
              image: AppImageStrings.onBoarding2,
              title: 'onBoarding2Title'.tr,
              subtitle: 'onBoarding2Subtitle'.tr,
            ),
            OnBoarding(
              image: AppImageStrings.onBoarding3,
              title: 'onBoarding3Title'.tr,
              subtitle: 'onBoarding3Subtitle'.tr,
            ),
            OnBoarding(image: AppImageStrings.onBoarding4, title: 'onBoarding4Title'.tr, subtitle: 'onBoarding4Subtitle'.tr),
          ],
        ),
        ///Skip Button
        const OnBoardingSkipButton(),
        ///Next Button
        const OnBoardingNextButton(),
        ///OnBoarding Dots
        const OnBoardingDots()
      ],
    ));
  }
}



