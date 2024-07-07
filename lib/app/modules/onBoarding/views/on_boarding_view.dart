import 'package:ecommerce/app/utils/constants/app_text.dart';
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
          children: const [
            OnBoarding(image: AppImageStrings.onBoarding1, title: AppText.onBoardingTitle1, subtitle: AppText.onBoardingSubTitle1),
            OnBoarding(image: AppImageStrings.onBoarding2, title: AppText.onBoardingTitle2, subtitle: AppText.onBoardingSubTitle2),
            OnBoarding(image: AppImageStrings.onBoarding3, title: AppText.onBoardingTitle3, subtitle: AppText.onBoardingSubTitle3),
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



