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
      right: 0,
      child: TextButton(
        onPressed: () => controller.skipPage(),
        child: Text('Skip'.tr),
      ),
    );
  }
}
