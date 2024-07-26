import 'package:ecommerce/app/common/widgets/loaders/animationLoaders/animation_loader.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/helpers/helper_function.dart';

/// A utility class for managing a full-screen loading dialog.

class FullScreenLoader {
  /// Open a full-screen loading dialog with a given text and animation.

  /// This method doesn't return anything.

  /// Parameters:

  /// text: The text to be displayed in the loading dialog.

  /// animation: The Lottie animation to be shown.

  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!, // Use Get.overlayContext for overlay dialogs
        barrierDismissible: false, // The dialog can't be dismissed by tapping outside it
        builder: (_) => PopScope(
              canPop: false, // Disable popping with the back button
              child: Container(
                color: AppHelperFunction.isDarkMode(Get.context!) ? AppColors.dark : AppColors.white,
                width: double.infinity,
                height: double.infinity,
                child: Column(children: [
                  const SizedBox(height: 250),
                  AnimationLoaderWidget(
                    text: text,
                    animation: animation,
                  )
                ]), // Column ), // Container
              ), // PopScope
            ));
  }

  static void stopLoadingDialog() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
