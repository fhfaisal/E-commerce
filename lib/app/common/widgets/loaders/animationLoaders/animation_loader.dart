import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/constants/colors.dart';

class AnimationLoaderWidget extends StatelessWidget {
  const AnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction=false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final Callback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Lottie.asset(animation, width: MediaQuery.of(context).size.width * 8.8), // Display Lottie animation

      const SizedBox(height: AppSizes.defaultSpace),
      Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ), // Text const SizedBox(height: TSizes.defaultSpace),

      showAction
          ? SizedBox(
              width: 250,
              child: OutlinedButton(
                  onPressed: onActionPressed,
                  style: OutlinedButton.styleFrom(backgroundColor: AppColors.dark),
                  child: Text(
                    actionText!,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.light), // Text
                  )))
          : const SizedBox(),
    ])); // OutlinedButton
    // Column ); // Center
  }
}
